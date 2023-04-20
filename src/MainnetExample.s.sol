// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import 'forge-std/Test.sol';
import {Script} from 'forge-std/Script.sol';
import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Ethereum, AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskSteward} from 'aave-helpers/riskstewards/CapsPlusRiskSteward.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';

contract MainnetExample is CapsPlusRiskStewardMainnet {
  /**
   * @notice This script doesn't broadcast as it's intended to be used via safe
   */
  function run() external {
    vm.startPrank(user);
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.DAI_UNDERLYING,
      380_000_000,
      EngineFlags.KEEP_CURRENT
    );

    bytes memory callDatas = _simulateAndGenerateDiff(capUpdates);
    _sendToSafe(address(STEWARD), callDatas);
  }
}
