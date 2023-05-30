// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Metis} from 'aave-address-book/AaveV3Metis.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardMetis is CapsPlusRiskStewardBase {
  constructor() CapsPlusRiskStewardBase(AaveV3Metis.POOL, AaveV3Metis.CAPS_PLUS_RISK_STEWARD) {}
}
