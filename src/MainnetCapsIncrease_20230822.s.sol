// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';

/**
 * @title Update Borrow Caps on Ethereum V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-borrow-caps-on-v3-ethereum-08-22-2023/14601
 */
contract MainnetCapsIncrease_20230822 is CapsPlusRiskStewardMainnet {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'mainnetCapsIncrease_20230822';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](2);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.rETH_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      9_600
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.LUSD_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      8_000_000
    );

    return capUpdates;
  }
}
