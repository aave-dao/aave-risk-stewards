// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {CapsPlusRiskStewardOptimism} from '../scripts/CapsPlusRiskStewardOptimism.s.sol';

/**
  * @title Test Proposal for Generator
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/
 */
contract OptimismCapsUpdate_TestDate is CapsPlusRiskStewardOptimism {
  function name() internal pure override returns (string memory) {
    return 'Optimism_caps_TestDate';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3OptimismAssets.wstETH_UNDERLYING,
      supplyCap: 20000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}