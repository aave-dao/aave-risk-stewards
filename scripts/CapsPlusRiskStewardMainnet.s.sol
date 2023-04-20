// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import 'forge-std/Test.sol';
import {Script} from 'forge-std/Script.sol';
import {AaveGovernanceV2} from 'aave-address-book/AaveGovernanceV2.sol';
import {AaveV3Ethereum, AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskSteward} from 'aave-helpers/riskstewards/CapsPlusRiskSteward.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardBase} from './CapsPlusRiskStewardBase.s.sol';

abstract contract CapsPlusRiskStewardMainnet is CapsPlusRiskStewardBase {
  CapsPlusRiskSteward immutable STEWARD;

  // WORKAROUND START
  constructor() {
    vm.createSelectFork(vm.rpcUrl('mainnet'), 17087049);
    STEWARD = new CapsPlusRiskSteward(
      AaveV3Ethereum.AAVE_PROTOCOL_DATA_PROVIDER,
      IAaveV3ConfigEngine(AaveV3Ethereum.LISTING_ENGINE),
      user
    );
    vm.startPrank(AaveGovernanceV2.SHORT_EXECUTOR);
    AaveV3Ethereum.ACL_MANAGER.addRiskAdmin(address(STEWARD));
    vm.stopPrank();
  }

  // WORKAROUND END

  function getSteward() internal view override returns (address) {
    return address(STEWARD);
  }
}
