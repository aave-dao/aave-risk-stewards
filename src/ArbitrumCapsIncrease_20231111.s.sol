// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
 * @title Update Caps on Arbitrum V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-arbitrum-11-09-2023/15449
 */
contract ArbitrumCapsIncrease_20231111 is CapsPlusRiskStewardArbitrum {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'arbitrum_caps_increase_20231111';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](2);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ArbitrumAssets.rETH_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      1_360
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ArbitrumAssets.wstETH_UNDERLYING,
      55_000,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}