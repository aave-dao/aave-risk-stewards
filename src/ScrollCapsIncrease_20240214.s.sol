// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3ScrollAssets} from 'aave-address-book/AaveV3Scroll.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardScroll} from '../scripts/CapsPlusRiskStewardScroll.s.sol';

/**
 * @title Update Caps on Scroll V3
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-caps-on-v3-scroll-02-14-2024/16626
 */
contract ScrollCapsIncrease_20240214 is CapsPlusRiskStewardScroll {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'scroll_caps_increase_20240214';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](3);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ScrollAssets.USDC_UNDERLYING,
      2_000_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ScrollAssets.WETH_UNDERLYING,
      480,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ScrollAssets.wstETH_UNDERLYING,
      260,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}
