// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Scroll} from 'aave-address-book/AaveV3Scroll.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardScroll is CapsPlusRiskStewardBase {
  constructor() CapsPlusRiskStewardBase(AaveV3Scroll.POOL, AaveV3Scroll.CAPS_PLUS_RISK_STEWARD) {}
}
