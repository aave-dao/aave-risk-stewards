// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
 * @title Increase Borrow Cap for WETH on V3 Arbitrum
 * @author Chaos Labs - eyalovadya
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-borrow-cap-for-weth-on-v3-arbitrum-02-16-2024/16645
 */
contract ArbitrumWETHBorrowCapIncrease_20240216 is CapsPlusRiskStewardArbitrum {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'arbitrum_weth_borrow_cap_increase_20240216';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3ArbitrumAssets.WETH_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      60_000
    );

    return capUpdates;
  }
}
