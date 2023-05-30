// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3AvalancheAssets} from 'aave-address-book/AaveV3Avalanche.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardAvalanche} from '../scripts/CapsPlusRiskStewardAvalanche.s.sol';

contract AvalancheExample is CapsPlusRiskStewardAvalanche {
  /**
   * @return string name identifier used for the diff
   */
  function name() internal pure override returns (string memory) {
    return 'avalanche_example';
  }

  /**
   * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
   */
  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](1);
    capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
      AaveV3AvalancheAssets.sAVAX_UNDERLYING,
      4_000_000,
      EngineFlags.KEEP_CURRENT
    );
    return capUpdates;
  }
}
