// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';

/**
 * @title Update Borrow Caps on Ethereum V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-ethereum-09-05-2023/14764
 */
contract MainnetCapsIncrease_20230906 is CapsPlusRiskStewardMainnet {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'mainnetCapsIncrease_20230906';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](4);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.RPL_UNDERLYING,
      840_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.MKR_UNDERLYING,
      15_000,
      3_000
    );

    capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.UNI_UNDERLYING,
      4_000_000,
      EngineFlags.KEEP_CURRENT
    );

    capUpdates[3] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.cbETH_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      2_400
    );

    return capUpdates;
  }
}
