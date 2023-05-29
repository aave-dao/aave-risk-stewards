// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Ethereum} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardMainnet is CapsPlusRiskStewardBase {
  constructor() CapsPlusRiskStewardBase(AaveV3Ethereum.CAPS_PLUS_RISK_STEWARD) {}
}
