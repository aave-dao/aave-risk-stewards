// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';

/**
 * @title Update Supply Caps on Metis V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-caps-on-v3-metis-07-26-2023/14152
 */
contract MetisCapsIncrease_20230728 is CapsPlusRiskStewardMetis {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'metis_caps_increase_20230728';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](2);
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(AaveV3MetisAssets.WETH_UNDERLYING, 300, 90);
    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3MetisAssets.Metis_UNDERLYING,
      60_000,
      EngineFlags.KEEP_CURRENT
    );
    return capUpdates;
  }
}
