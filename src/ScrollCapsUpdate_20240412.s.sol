// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3ScrollAssets} from 'aave-address-book/AaveV3Scroll.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {CapsPlusRiskStewardScroll} from '../scripts/CapsPlusRiskStewardScroll.s.sol';

/**
 * @title Increase Supply and Borrow Caps on V3 Scroll
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-scroll-04-11-2024/17341/1
 */
contract ScrollCapsUpdate_20240412 is CapsPlusRiskStewardScroll {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'ScrollCapsUpdate_20240412';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](2);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ScrollAssets.WETH_UNDERLYING,
      2_000,
      1_200
    );
    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ScrollAssets.USDC_UNDERLYING,
      5_000_000,
      3_600_000
    );
    return capUpdates;
  }
}
