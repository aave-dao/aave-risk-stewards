// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardPolygon} from '../scripts/CapsPlusRiskStewardPolygon.s.sol';

/**
 * @title Increase USDC.e Cap on Polygon V3, and execute AIP-414
 * @author @ChaosLabsInc
 * - Discussion:
 */
contract PolygonUSDCeCapIncrease_20231221 is CapsPlusRiskStewardPolygon {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'PolygonUSDCeCapIncrease_20231221';
  }
  

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3PolygonAssets.USDC_UNDERLYING,
      48_000_000,
      43_500_000
    );

    return capUpdates;
  }
}
