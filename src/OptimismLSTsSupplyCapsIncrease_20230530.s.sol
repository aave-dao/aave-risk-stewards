// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardOptimism} from '../scripts/CapsPlusRiskStewardOptimism.s.sol';

/**
 * @title Update Supply Caps for wstETH on Optimism V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-increase-supply-caps-for-lsts-on-aave-v3/13240
 */
contract OptimismLSTsSupplyCapsIncrease_20230530 is CapsPlusRiskStewardOptimism {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'optimism_LSTs_supply_caps_increase_20230530';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);
    
    // wstETH
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3OptimismAssets.wstETH_UNDERLYING,
      18_000,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}
