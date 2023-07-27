// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';

/**
 * @title Update Supply Caps for RPL on Ethereum V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-caps-rpl-on-v3-ethereum/14123
 */
contract MainnetCapsIncrease_20230727 is CapsPlusRiskStewardMainnet {
  address public constant RPL_UNDERLYING_ADDRESS = 0xD33526068D116cE69F19A9ee46F0bd304F21A51f;

  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'mainnetCapsIncrease_20230727';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    // RPL
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      RPL_UNDERLYING_ADDRESS,
      210_000,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}
