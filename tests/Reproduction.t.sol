// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ProtocolV3_0_1TestBase, InterestStrategyValues, ReserveConfig} from 'aave-helpers/ProtocolV3TestBase.sol';
import {PolygonExample} from '../src/PolygonExample.s.sol';

contract Reproduction is ProtocolV3_0_1TestBase {
  function setUp() public {
    vm.createSelectFork(vm.rpcUrl('polygon'));
  }

  function testReproduction() public {
    PolygonExample script = new PolygonExample();
    script.run(false);
  }
}
