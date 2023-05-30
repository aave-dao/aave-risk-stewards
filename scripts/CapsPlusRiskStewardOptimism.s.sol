// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Optimism} from 'aave-address-book/AaveV3Optimism.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardOptimism is CapsPlusRiskStewardBase {
  constructor()
    CapsPlusRiskStewardBase(AaveV3Optimism.POOL, AaveV3Optimism.CAPS_PLUS_RISK_STEWARD)
  {}
}
