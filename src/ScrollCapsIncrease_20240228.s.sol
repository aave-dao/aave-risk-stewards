// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3ScrollAssets} from 'aave-address-book/AaveV3Scroll.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardScroll} from '../scripts/CapsPlusRiskStewardScroll.s.sol';

/**
 * @title Update Caps on Scroll V3
 * @author Chaos Labs - eyalovadya
 */
contract ScrollCapsIncrease_20240228 is CapsPlusRiskStewardScroll {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'scroll_caps_increase_20240228';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](2);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ScrollAssets.WETH_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      600
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ScrollAssets.wstETH_UNDERLYING,
      700,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}
