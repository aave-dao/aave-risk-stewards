// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3BNBAssets} from 'aave-address-book/AaveV3BNB.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardBNB} from '../scripts/CapsPlusRiskStewardBNB.s.sol';

/**
 * @title Update FDUSD Caps on BNB V3
 * @author Chaos Labs - eyalovadya
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-fdusd-supply-and-borrow-cap-on-v3-bnbchain-03-01-2024/16801
 */
contract BnbFDUSDCapsIncrease_20240229 is CapsPlusRiskStewardBNB {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'bnb_fdusd_caps_increase_20240229';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3BNBAssets.FDUSD_UNDERLYING,
      12_000_000,
      10_800_000
    );

    return capUpdates;
  }
}
