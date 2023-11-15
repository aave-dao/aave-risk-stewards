// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3Polygon} from 'aave-address-book/AaveV3Polygon.sol';
import {AaveV3Base} from 'aave-address-book/AaveV3Base.sol';
import {AaveV3Arbitrum} from 'aave-address-book/AaveV3Arbitrum.sol';
import {AaveV3Optimism} from 'aave-address-book/AaveV3Optimism.sol';
import {AaveV3Ethereum} from 'aave-address-book/AaveV3Ethereum.sol';
import {AaveV3Metis} from 'aave-address-book/AaveV3Metis.sol';
import {AaveV3Avalanche} from 'aave-address-book/AaveV3Avalanche.sol';

import 'forge-std/Test.sol';
import {ProtocolV3TestBase, ReserveConfig} from 'aave-helpers/ProtocolV3TestBase.sol';

contract GenerateSnapshots is ProtocolV3TestBase {
  function test_generatePolygonSnapshot() public {
    vm.createSelectFork(vm.rpcUrl('polygon'));
    createConfigurationSnapshot('polygon_snapshot', AaveV3Polygon.POOL);
  }

  function test_generateBaseSnapshot() public {
    vm.createSelectFork(vm.rpcUrl('base'));
    createConfigurationSnapshot('base_snapshot', AaveV3Base.POOL);
  }

  function test_generateArbitrumSnapshot() public {
    vm.createSelectFork(vm.rpcUrl('arbitrum'));
    createConfigurationSnapshot('arbitrum_snapshot', AaveV3Arbitrum.POOL);
  }

  function test_generateOptimismSnapshot() public {
    vm.createSelectFork(vm.rpcUrl('optimism'));
    createConfigurationSnapshot('optimism_snapshot', AaveV3Optimism.POOL);
  }

  function test_generateEthereumSnapshot() public {
    vm.createSelectFork(vm.rpcUrl('mainnet'));
    createConfigurationSnapshot('ethereum_snapshot', AaveV3Ethereum.POOL);
  }

  function test_generateMetisSnapshot() public {
    vm.createSelectFork(vm.rpcUrl('metis'));
    createConfigurationSnapshot('metis_snapshot', AaveV3Metis.POOL);
  }

  function test_generateAvalancheSnapshot() public {
    vm.createSelectFork(vm.rpcUrl('avalanche'));
    createConfigurationSnapshot('avalanche_snapshot', AaveV3Avalanche.POOL);
  }
}
