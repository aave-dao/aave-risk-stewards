// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {console2} from "forge-std/console2.sol";
import "forge-std/Test.sol";
import {GovernanceV3Polygon} from "aave-address-book/GovernanceV3Polygon.sol";
import {IPayloadsControllerCore} from "aave-address-book/GovernanceV3.sol";
import {PolygonUSDCeCapIncrease_20231221} from "src/PolygonUSDCeCapIncrease_20231221.s.sol";

contract ExecutePayloadScript is Script, Test {
    error FailedUpdate();
    error payloadStateNotExecuted();
    error payloadStateNotQueued();

    address constant SAFE_ADDRESS = 0x2C40FB1ACe63084fc0bB95F83C31B5854C6C4cB5;
    uint40 constant PAYLOAD_ID = 22;

    function setUp() public {
        vm.createSelectFork(vm.rpcUrl("polygon"), 51395133);
    }

    function run() external {
        PolygonUSDCeCapIncrease_20231221 capIncrease = new PolygonUSDCeCapIncrease_20231221();
        capIncrease.run(false);

        IPayloadsControllerCore.PayloadState payloadState =
            GovernanceV3Polygon.PAYLOADS_CONTROLLER.getPayloadState(PAYLOAD_ID);
        if (uint256(payloadState) != 2) {
            revert payloadStateNotQueued();
        }

        bool success;
        bytes memory resultData;
        vm.startPrank(SAFE_ADDRESS);
        bytes memory callData =
            abi.encodeWithSelector(GovernanceV3Polygon.PAYLOADS_CONTROLLER.executePayload.selector, PAYLOAD_ID);
        (success, resultData) = address(GovernanceV3Polygon.PAYLOADS_CONTROLLER).call(callData);
        _verifyCallResult(success, resultData);
        vm.stopPrank();

        payloadState = GovernanceV3Polygon.PAYLOADS_CONTROLLER.getPayloadState(PAYLOAD_ID);

        if (uint256(payloadState) != 3) {
            revert payloadStateNotExecuted();
        }

        emit log_string("Payload 22 Execution Calldata:");
        emit log_bytes(callData);
    }

    function _verifyCallResult(bool success, bytes memory returnData) private pure returns (bytes memory) {
        if (success) {
            return returnData;
        } else {
            // Look for revert reason and bubble it up if present
            if (returnData.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returnData)
                    revert(add(32, returnData), returndata_size)
                }
            } else {
                revert FailedUpdate();
            }
        }
    }
}
