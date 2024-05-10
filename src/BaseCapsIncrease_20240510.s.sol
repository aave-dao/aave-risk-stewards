// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3BaseAssets} from 'aave-address-book/AaveV3Base.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardBaseChain} from '../scripts/CapsPlusRiskStewardBaseChain.s.sol';

/**
 * @title Update Caps on Base V3
 * @author Chaos Labs
 * Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-cap-for-weeth-on-v3-scroll-polygon-ethereum-and-base-05-09-2024/17625
 */
contract BaseCapsIncrease_20240510 is CapsPlusRiskStewardBaseChain {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'base_caps_increase_20240510';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3BaseAssets.wstETH_UNDERLYING,
      6_000,
      EngineFlags.KEEP_CURRENT
    );

    return capUpdates;
  }
}
