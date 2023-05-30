// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Polygon} from 'aave-address-book/AaveV3Polygon.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardPolygon is CapsPlusRiskStewardBase {
  constructor() CapsPlusRiskStewardBase(AaveV3Polygon.POOL, AaveV3Polygon.CAPS_PLUS_RISK_STEWARD) {}
}
