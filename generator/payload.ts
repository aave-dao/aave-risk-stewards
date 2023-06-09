import {AllUpdates, valueOrKeepCurrent, Networks, NetworkUpdate} from './index.js';

export function generatePayloadFile(updateDate: string, updates: AllUpdates): string {
  const payloadFile = `// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
${Object.keys(updates)
  .map((network) => {
    return `import {AaveV3${network}Assets} from 'aave-address-book/AaveV3${network}.sol';
import {CapsPlusRiskSteward${network}} from '../scripts/CapsPlusRiskSteward${network}.s.sol';`;
  })
  .join('\n')}

${Object.keys(updates)
  .map((network) => {
    const update = updates[network as Networks] as NetworkUpdate;
    return `contract ${network}CapsUpdate_${updateDate} is CapsPlusRiskSteward${network} {
${[
  `  function name() internal pure override returns (string memory) {
    return '${network}_caps_${updateDate}';
  }`,
  `${
    update.capsUpdates && update.capsUpdates.length > 0
      ? `  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](${
      update.capsUpdates.length
    });
${update.capsUpdates
  .map(
    (update, index) => `
    capsUpdate[${index}] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3${network}Assets.${update.asset},
      supplyCap: ${valueOrKeepCurrent(update.supplyCap)},
      borrowCap: ${valueOrKeepCurrent(update.borrowCap)}
    });`
  )
  .join('\n')}

    return capsUpdate;
  }`
      : ''
  }`,
]
  .filter((x) => x)
  .join('\n\n')}
}`;
  })
  .filter((x) => x)
  .join('\n\n')}`;

  return payloadFile;
}
