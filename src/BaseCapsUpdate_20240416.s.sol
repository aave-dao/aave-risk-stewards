// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3BaseAssets} from 'aave-address-book/AaveV3Base.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {CapsPlusRiskStewardBaseChain} from '../scripts/CapsPlusRiskStewardBaseChain.s.sol';

/**
 * @title Increase Supply and Borrow Caps on V3 Base
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-base-04-15-2024/17372
 */
contract BaseCapsUpdate_20240416 is CapsPlusRiskStewardBaseChain {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'BaseCapsUpdate_20240416';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](2);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(AaveV3BaseAssets.WETH_UNDERLYING, 18_000, 9_000);
    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3BaseAssets.USDC_UNDERLYING,
      60_000_000,
      54_000_000
    );
    return capUpdates;
  }
}
