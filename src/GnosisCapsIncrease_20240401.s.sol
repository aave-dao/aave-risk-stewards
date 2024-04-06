// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3GnosisAssets} from 'aave-address-book/AaveV3Gnosis.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardGnosis} from '../scripts/CapsPlusRiskStewardGnosis.s.sol';

/**
 * @title Update Caps on Gnosis V3
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-cap-on-v3-gnosis-04-01-2024/17201
 */
contract GnosisCapsIncrease_20240401 is CapsPlusRiskStewardGnosis {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'gnosis_caps_increase_20240401';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](5);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.GNO_UNDERLYING,
      60_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.EURe_UNDERLYING,
      3_000_000,
      2_800_000
    );

    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.sDAI_UNDERLYING,
      48_000_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[3] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.USDC_UNDERLYING,
      11_000_000,
      11_000_000
    );

    capUpdates[4] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3GnosisAssets.WXDAI_UNDERLYING,
      36_000_000,
      36_000_000
    );

    return capUpdates;
  }
}
