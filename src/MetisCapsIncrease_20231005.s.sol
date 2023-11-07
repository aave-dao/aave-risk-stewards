// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';

/**
 * @title Increase Caps for m.USDC, m.USDT & METIS on Metis V3
 * @author @ChaosLabsInc
 * - Discussion: https://governance.aave.com/t/arfc-chaos-labs-risk-stewards-increase-supply-and-borrow-caps-on-v3-metis-arbitrum-10-03-2023/15038
 */
contract MetisCapsIncrease_20231005 is CapsPlusRiskStewardMetis {
    /**
    * @return string name identifier used for the diff
    */
    function name() internal pure override returns (string memory) {
        return 'metis_caps_increase_20231005';
    }

    /**
    * @return IAaveV3ConfigEngine.CapsUpdate[] capUpdates to be performed
    */
    function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
        IAaveV3ConfigEngine.CapsUpdate[] memory capUpdates = new IAaveV3ConfigEngine.CapsUpdate[](3);

        capUpdates[0] = IAaveV3ConfigEngine.CapsUpdate(
        AaveV3MetisAssets.mUSDC_UNDERLYING,
        4_000_000,
        4_000_000
        );

        capUpdates[1] = IAaveV3ConfigEngine.CapsUpdate(
        AaveV3MetisAssets.mUSDT_UNDERLYING,
        4_000_000,
        4_000_000
        );

        capUpdates[2] = IAaveV3ConfigEngine.CapsUpdate(
        AaveV3MetisAssets.Metis_UNDERLYING,
        360_000,
        8_000
        );
        
        return capUpdates;
    }
}