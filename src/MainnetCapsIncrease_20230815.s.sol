// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';

/**
 * @title Update Supply Caps Ethereum V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-risk-stewards-increase-supply-and-borrow-cap-on-v3-ethereum-08-09-2023/14406
 */
contract MainnetCapsIncrease_20230815 is CapsPlusRiskStewardMainnet {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'mainnetCapsIncrease_20230815';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](3);

    // USDT
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.USDT_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      250_000_000
    );

    // MKR
    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.MKR_UNDERLYING,
      10_000,
      EngineFlags.KEEP_CURRENT
    );

    // rETH
    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.rETH_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      4_800
    );

    return capUpdates;
  }
}
