// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';

/**
 * @title Update Caps on Metis V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-borrow-caps-on-v3-metis-ethereum-10-17-2023/15136
 */
contract MetisCapsIncrease20231018 is CapsPlusRiskStewardMetis {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'metis_caps_increase_20231018';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](3);
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.Metis_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      16_000
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.mUSDC_UNDERLYING,
      6_000_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.mUSDT_UNDERLYING,
      5_000_000,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}
