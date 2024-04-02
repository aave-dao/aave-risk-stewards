// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardOptimism} from '../scripts/CapsPlusRiskStewardOptimism.s.sol';

/**
 * @title Update USDC Caps on Optimism V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-cap-for-usdc-on-v3-optimism-04-01-2024/17203
 */
contract OptimismUSDCCapsIncrease_20240401 is CapsPlusRiskStewardOptimism {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'OptimismUSDCCapsIncrease_20240401';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3OptimismAssets.USDCn_UNDERLYING,
      50_000_000,
      40_000_000
    );

    return capUpdates;
  }
}
