// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';

/**
 * @title Increase Supply and Borrow Caps on Aave V3
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-aave-v3-05-20-2024/17752
 */
contract MainnetCapsUpdate_20240521 is CapsPlusRiskStewardMainnet {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'MainnetCapsUpdate_20240521';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3EthereumAssets.BAL_UNDERLYING,
      2_100_000,
      250_000
    );
    return capUpdates;
  }
}
