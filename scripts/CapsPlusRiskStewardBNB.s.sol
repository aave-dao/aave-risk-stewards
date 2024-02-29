// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3BNB} from 'aave-address-book/AaveV3BNB.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardBNB is CapsPlusRiskStewardBase {
  constructor() CapsPlusRiskStewardBase(AaveV3BNB.POOL, AaveV3BNB.CAPS_PLUS_RISK_STEWARD) {}
}
