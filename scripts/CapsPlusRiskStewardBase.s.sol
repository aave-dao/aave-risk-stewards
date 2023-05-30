// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import 'forge-std/Test.sol';
import {Script} from 'forge-std/Script.sol';
import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {IPool} from 'aave-address-book/AaveV3.sol';
import {CapsPlusRiskSteward} from 'aave-helpers/riskstewards/CapsPlusRiskSteward.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {ProtocolV3_0_1TestBase, ReserveConfig} from 'aave-helpers/ProtocolV3TestBase.sol';

abstract contract CapsPlusRiskStewardBase is ProtocolV3_0_1TestBase {
  error FailedUpdate();
  IPool immutable POOL;
  CapsPlusRiskSteward immutable STEWARD;

  constructor(IPool pool, address steward) {
    POOL = pool;
    STEWARD = CapsPlusRiskSteward(steward);
  }

  function capsUpdates() internal pure virtual returns (IAaveV3ConfigEngine.CapsUpdate[] memory);

  function name() internal pure virtual returns (string memory);

  /**
   * @notice This script doesn't broadcast as it's intended to be used via safe
   */
  function run(bool broadcastToSafe) external {
    // only needed as long as things are mocked
    IAaveV3ConfigEngine.CapsUpdate[] memory updates = capsUpdates();
    vm.startPrank(STEWARD.RISK_COUNCIL());
    bytes memory callDatas = _simulateAndGenerateDiff(updates);
    vm.stopPrank();
    emit log_string('safe address');
    emit log_address(STEWARD.RISK_COUNCIL());
    emit log_string('steward address:');
    emit log_address(address(STEWARD));
    emit log_string('calldata:');
    emit log_bytes(callDatas);

    if (broadcastToSafe) {
      _sendToSafe(callDatas);
    }
  }

  function _simulateAndGenerateDiff(
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates
  ) internal returns (bytes memory) {
    string memory pre = string(abi.encodePacked('pre_', name()));
    string memory post = string(abi.encodePacked('post_', name()));
    createConfigurationSnapshot(pre, POOL);
    bytes memory callDatas = abi.encodeWithSelector(
      CapsPlusRiskSteward.updateCaps.selector,
      capUpdates
    );
    bool success;
    bytes memory resultData;
    (success, resultData) = address(STEWARD).call(callDatas);
    _verifyCallResult(success, resultData);
    createConfigurationSnapshot(post, POOL);
    diffReports(pre, post);

    return callDatas;
  }

  function _sendToSafe(bytes memory callDatas) internal {
    string[] memory inputs = new string[](8);
    inputs[0] = 'npx';
    inputs[1] = 'ts-node';
    inputs[2] = 'scripts/safe-helper.ts';
    inputs[3] = vm.toString(STEWARD.RISK_COUNCIL());
    inputs[4] = vm.toString(address(STEWARD));
    inputs[5] = vm.toString(callDatas);
    inputs[6] = vm.toString(block.chainid);
    inputs[7] = 'Call';
    vm.ffi(inputs);
  }

  function _verifyCallResult(
    bool success,
    bytes memory returnData
  ) private pure returns (bytes memory) {
    if (success) {
      return returnData;
    } else {
      // Look for revert reason and bubble it up if present
      if (returnData.length > 0) {
        // The easiest way to bubble the revert reason is using memory via assembly

        // solhint-disable-next-line no-inline-assembly
        assembly {
          let returndata_size := mload(returnData)
          revert(add(32, returnData), returndata_size)
        }
      } else {
        revert FailedUpdate();
      }
    }
  }
}
