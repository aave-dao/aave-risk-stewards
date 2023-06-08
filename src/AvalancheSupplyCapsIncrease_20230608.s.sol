// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3AvalancheAssets} from 'aave-address-book/AaveV3Avalanche.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardAvalanche} from '../scripts/CapsPlusRiskStewardAvalanche.s.sol';

/**
 * @title Update Supply Cap for sAVAX on Avalanche V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-increase-supply-caps-for-lsts-on-aave-v3/13240
 */
contract AvalancheSupplyCapsIncrease_20230608 is CapsPlusRiskStewardAvalanche {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'avalanche_caps_increase_20230608';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3AvalancheAssets.sAVAX_UNDERLYING,
      2_200_000,
      EngineFlags.KEEP_CURRENT
    );
    return capUpdates;
  }
}
