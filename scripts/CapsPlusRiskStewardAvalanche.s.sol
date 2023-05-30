// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Avalanche} from 'aave-address-book/AaveV3Avalanche.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardAvalanche is CapsPlusRiskStewardBase {
  constructor()
    CapsPlusRiskStewardBase(AaveV3Avalanche.POOL, AaveV3Avalanche.CAPS_PLUS_RISK_STEWARD)
  {}
}
