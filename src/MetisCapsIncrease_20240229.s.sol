// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';

/**
 * @title Update Caps on Metis V3
 * @author Chaos Labs - eyalovadya
 * Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-cap-on-v3-metis-03-01-24/16803
 */
contract MetisCapsIncrease_20240229 is CapsPlusRiskStewardMetis {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'metis_caps_increase_20240229';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](4);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.mUSDC_UNDERLYING,
      10_000_000,
      9_000_000
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.mUSDT_UNDERLYING,
      8_000_000,
      7_200_000
    );

    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.mDAI_UNDERLYING,
      1_100_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[3] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.WETH_UNDERLYING,
      600,
      360
    );

    return capUpdates;
  }
}
