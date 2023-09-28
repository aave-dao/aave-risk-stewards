// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Base} from 'aave-address-book/AaveV3Base.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardBaseChain is CapsPlusRiskStewardBase {
  constructor() CapsPlusRiskStewardBase(AaveV3Base.POOL, AaveV3Base.CAPS_PLUS_RISK_STEWARD) {}
}
