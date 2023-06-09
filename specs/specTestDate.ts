import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const optimismUpdate = {
  title: 'Test Proposal for Generator',
  author: '@Gauntlet',
  forumPost: 'https://governance.aave.com/',
  capsUpdates: [
    {
      asset: 'wstETH_UNDERLYING',
      supplyCap: 20_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Optimism: optimismUpdate,
} satisfies AllUpdates;

export default updates;
