import { AllUpdates, KEEP_CURRENT, NetworkUpdate } from '../generator/index.js';

const ethereumUpdate = {
    title: 'Gauntlet Bal Supply Cap Update',
    author: '@Gauntlet',
    forumPost:
        'https://governance.aave.com/t/arfc-gauntlet-recommendation-to-increase-v3-ethereum-caps-2023-10-18/15150',
    capsUpdates: [
        {
            asset: 'BAL_UNDERLYING',
            supplyCap: 700_000n,
            borrowCap: KEEP_CURRENT,
        },
    ],
} satisfies NetworkUpdate;

const updates = {
    Ethereum: ethereumUpdate,
} satisfies AllUpdates;

export default updates;