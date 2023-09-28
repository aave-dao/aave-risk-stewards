// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';

/**
 * @title Update Borrow Caps on Ethereum V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-08-29-2023/14688
 */
contract MainnetCapsIncrease_20230901 is CapsPlusRiskStewardMainnet {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'mainnetCapsIncrease_20230901';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](2);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.RPL_UNDERLYING,
      420_000,
      160_000
    );

    capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.wstETH_UNDERLYING,
      750_000,
      24_000
    );

    return capUpdates;
  }
}
