// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3BaseAssets} from 'aave-address-book/AaveV3Base.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardBaseChain} from '../scripts/CapsPlusRiskStewardBaseChain.s.sol';

/**
 * @title Update Caps on Base V3
 * @author Chaos Labs
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-08-29-2023/14688
 */
contract BaseCapsIncrease_20230901 is CapsPlusRiskStewardBaseChain {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'base_caps_increase_20230901';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);

    // cbETH
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3BaseAssets.cbETH_UNDERLYING,
      EngineFlags.KEEP_CURRENT,
      200
    );

    return capUpdates;
  }
}
