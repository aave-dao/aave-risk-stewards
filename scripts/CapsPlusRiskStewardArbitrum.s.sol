// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Arbitrum} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardArbitrum is CapsPlusRiskStewardBase {
  constructor()
    CapsPlusRiskStewardBase(AaveV3Arbitrum.POOL, AaveV3Arbitrum.CAPS_PLUS_RISK_STEWARD)
  {}
}
