import * as fs from 'fs';
import * as path from 'path';
import yargs from 'yargs';
import {hideBin} from 'yargs/helpers';
import dotenv from 'dotenv';
import {$} from 'execa';

import {generatePayloadFile} from './payload.js';

const $$ = $({stdio: 'inherit', verbose: true});

export const KEEP_CURRENT = 'KEEP_CURRENT' as const;

export type EngineValue<T> = T | typeof KEEP_CURRENT;

type EngineUpdate<T> = {
  [P in keyof T]: EngineValue<T[P]>;
};

export type CapsUpdate = EngineUpdate<{
  asset: string;
  supplyCap: BigInt;
  borrowCap: BigInt;
}>;

export type Networks =
  | 'Ethereum'
  | 'Polygon'
  | 'Arbitrum'
  | 'Optimism'
  | 'Avalanche'
  | 'Metis'
  | 'Base';

export const govHelperNetworkNames: Record<Networks, string> = {
  Ethereum: 'Mainnet',
  Polygon: 'Polygon',
  Arbitrum: 'Arbitrum',
  Optimism: 'Optimism',
  Avalanche: 'Avalanche',
  Metis: 'Metis',
  Base: 'BaseChain',
};

export const foundryNetworkNamePerNetwork: Record<Networks, string> = {
  Ethereum: 'mainnet',
  Polygon: 'polygon',
  Arbitrum: 'arbitrum',
  Optimism: 'optimism',
  Avalanche: 'avalanche',
  Metis: 'metis',
  Base: 'base',
};

export interface NetworkUpdate {
  title: string;
  author: string;
  forumPost: string;
  capsUpdates?: CapsUpdate[];
}

export type AllUpdates = Partial<Record<Networks, NetworkUpdate>>;

function keepCurrentOrElse<T>(value: EngineValue<T>, else_op: (val: T) => string): string {
  return value === KEEP_CURRENT ? 'EngineFlags.KEEP_CURRENT' : else_op(value);
}

export function valueOrKeepCurrent<T extends BigInt>(value: EngineValue<T>): string {
  return keepCurrentOrElse(value, (val) => val.toString());
}

interface Files {
  [name: string]: string;
}

function createFiles(folderPath: string, files: Files): void {
  Object.keys(files).forEach((name) => {
    fs.writeFileSync(path.join(folderPath, name), files[name]);
  });
}

// Function to generate the AaveV3 Caps Update Solidity files
function generateAaveV3UpdateFiles(updateDate: string, updates: AllUpdates): Files {
  const payloadFile = generatePayloadFile(updateDate, updates);

  return {
    [`CapsUpdates_${updateDate}.sol`]: payloadFile,
  };
}

function generateFollowupCommands(updateDate: string, updates: AllUpdates) {
  const networks = Object.keys(updates) as Networks[];

  const commands: string[] = [];

  for (const network of networks) {
    commands.push(
      `To Test ${network} Payload:\n  yarn ts-node generator/index.ts simulate --ud ${updateDate} --network ${network}`,
      `To Submit ${network} Payload:\n  yarn ts-node generator/index.ts simulate --ud ${updateDate} --network ${network} --submit=true`
    );
  }

  return commands.join('\n');
}

async function main() {
  await yargs(hideBin(process.argv))
    .command(
      'generate',
      'Generate new risk steward caps update',
      (yargs) => {
        return yargs
          .option('updateDate', {
            alias: 'ud',
            describe: "Update date in YYYYMMDD format. Example: '20230320'",
            type: 'string',
            demandOption: true,
          })
          .option('updateFile', {
            alias: 'uf',
            describe:
              'Path to the typescript update file which exports an AllUpdates value OR a direct JSON string.',
            type: 'string',
            demandOption: true,
          })
          .option('dry', {
            alias: 'd',
            describe: "Dry run, don't generate files.",
            type: 'boolean',
            default: false,
          });
      },
      async (argv) => {
        const updateDate = argv.updateDate as string;
        const updateInput = argv.updateFile as string;
        let updates: AllUpdates;

        try {
          // Try parsing as JSON first
          updates = JSON.parse(updateInput);
        } catch (e) {
          // If it's not valid JSON, consider it a file path
          const updateFilePath = path.join('..', updateInput);
          const updateFileExt = path.extname(updateFilePath);

          if (updateFileExt === '.js' || updateFileExt === '.ts') {
            updates = (await import(updateFilePath)).default;
          } else {
            throw new Error(
              'Unsupported file type. Please provide a valid JSON string, .js, or .ts file.'
            );
          }
        }

        const files = generateAaveV3UpdateFiles(updateDate, updates);
        const commands = generateFollowupCommands(updateDate, updates);

        if (!argv.dry) {
          createFiles('src', files);

          console.log('✅ Generator Success!');
          console.log(commands);
        }
      }
    )
    .command(
      'simulate',
      'Simulate a given update using forge',
      (yargs) => {
        return yargs
          .option('updateDate', {
            alias: 'ud',
            describe: "Update date in YYYYMMDD format. Example: '20230320'",
            type: 'string',
            demandOption: true,
          })
          .option('network', {
            alias: 'n',
            describe: 'Which payload should be deployed',
            type: 'string',
            demandOption: true,
          })
          .option('submit', {
            describe: 'Submit the payload to the safe',
            type: 'boolean',
            default: false,
          });
      },
      async (argv) => {
        // We need rpc url secrets for this command.
        dotenv.config();

        const network = argv.network as Networks;
        const updateDate = argv.updateDate as string;
        const submit = argv.submit as boolean;

        await $$`forge script src/CapsUpdates_${updateDate}.sol:${network}CapsUpdate_${updateDate} --rpc-url ${
          foundryNetworkNamePerNetwork[network]
        } --sig run(bool) ${submit.toString()} -vv`;
      }
    )
    .option('verbose', {
      alias: 'v',
      type: 'boolean',
      description: 'Run with verbose logging',
    })
    .demandCommand(1, 'Must pass at least one command')
    .help()
    .parseAsync();
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
