// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Gnosis} from 'aave-address-book/AaveV3Gnosis.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardGnosis is CapsPlusRiskStewardBase {
  constructor() CapsPlusRiskStewardBase(AaveV3Gnosis.POOL, AaveV3Gnosis.CAPS_PLUS_RISK_STEWARD) {}
}
