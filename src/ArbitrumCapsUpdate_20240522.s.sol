// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
 * @title Increase Supply and Borrow Caps on Aave V3 Arbitrum
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-aave-v3-arbitrum-05-21-2024/17767
 */
contract ArbitrumCapsUpdate_20240522 is CapsPlusRiskStewardArbitrum {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'ArbitrumCapsUpdate_20240522';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](3);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ArbitrumAssets.WBTC_UNDERLYING,
      5_000,
      EngineFlags.KEEP_CURRENT
    );
    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ArbitrumAssets.WETH_UNDERLYING,
      100_000,
      90_000
    );
    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ArbitrumAssets.USDCn_UNDERLYING,
      300_000_000,
      270_000_000
    );
    return capUpdates;
  }
}
