// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardPolygon} from '../scripts/CapsPlusRiskStewardPolygon.s.sol';

/**
 * @title Increase wstETH Caps on Polygon V3
 * @author Chaos Labs
 * Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-cap-for-wsteth-on-v3-polygon-03-30-2024/17170
 */
contract PolygonWstETHCapsIncrease_20240330 is CapsPlusRiskStewardPolygon {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'PolygonWstETHCapsIncrease_20240330';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3PolygonAssets.wstETH_UNDERLYING,
      5_250,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}
