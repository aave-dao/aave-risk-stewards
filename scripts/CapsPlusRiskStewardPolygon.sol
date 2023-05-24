// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Polygon} from 'aave-address-book/AaveV3Polygon.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardMainnet is CapsPlusRiskStewardBase {
  // WORKAROUND START
  constructor() CapsPlusRiskStewardBase(AaveV3Polygon.CAPS_PLUS_RISK_STEWARD) {
    vm.startPrank(AaveGovernanceV2.POLYGON_BRIDGE_EXECUTOR);
    AaveV3Polygon.ACL_MANAGER.addRiskAdmin(address(STEWARD));
    vm.stopPrank();
  }
}
