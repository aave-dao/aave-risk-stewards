// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3GnosisAssets} from 'aave-address-book/AaveV3Gnosis.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardGnosis} from '../scripts/CapsPlusRiskStewardGnosis.s.sol';

/**
 * @title Update Caps on Gnosis V3
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-gnosis-11-10-2023/15469
 */
contract GnosisCapsIncrease_20231112 is CapsPlusRiskStewardGnosis {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'gnosis_caps_increase_20231112';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](5);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.wstETH_UNDERLYING,
      5_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.WXDAI_UNDERLYING,
      3_000_000,
      2_700_000
    );

    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.sDAI_UNDERLYING,
      3_000_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[3] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.USDC_UNDERLYING,
      2_000_000,
      1_800_000
    );

    capUpdates[4] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.EURe_UNDERLYING,
      1_000_000,
      900_000
    );

    return capUpdates;
  }
}
