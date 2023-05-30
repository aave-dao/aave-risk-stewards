// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from 'forge-std/Script.sol';
import {AaveV3Metis} from 'aave-address-book/AaveV3Metis.sol';
import {CapsPlusRiskSteward} from 'aave-helpers/riskstewards/CapsPlusRiskSteward.sol';

contract MinimalMetisExample is Script {
  function run() public {
    CapsPlusRiskSteward(AaveV3Metis.CAPS_PLUS_RISK_STEWARD).RISK_COUNCIL();
  }
}
