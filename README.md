# Aave Risk Steward

This repository contains some template/example code for executing cap updates on the RiskCapPlusSteward.
There are 3 relevant contacts here:

- [CapsPlusRiskStewardBase](./scripts/CapsPlusRiskStewardBase.s.sol) the abstract base contract handling the configuration snapshot creation and the forwarding to safe via ffi
- abstract Network contracts with all the relevant addresses initialized
  - [CapsPlusRiskStewardMainnet](./scripts//CapsPlusRiskStewardMainnet.s.sol)
  - ... more to come
- [MainnetExample](./src/MainnetExample.s.sol) the actual contract performing the update. The contract inherits the others and therefore handles testing and forwarding to safe automatically. The only thing that needs to be done is implementing:
  - `name` function returning a unique name (is used for generating the config snapshot and diffs)
  - `capsUpdates` function, analog to config engine

The code can be executed by running: `forge script src/MainnetExample.s.sol:MainnetExample --rpc-url mainnet --sig "run(bool)" false -vv` where the bool inside the `run(bool)` signature determines if the calldata should be sent to safe.

## Development

This project uses [Foundry](https://getfoundry.sh). See the [book](https://book.getfoundry.sh/getting-started/installation.html) for detailed instructions on how to install and use Foundry.
The template ships with sensible default so you can use default `foundry` commands without resorting to `MakeFile`.

### Setup

```sh
cp .env.example .env
forge install
```

### Test

```sh
forge test
```

## Advanced features

### Diffing

For contracts upgrading implementations it's quite important to diff the implementation code to spot potential issues and ensure only the intended changes are included.
Therefore the `Makefile` includes some commands to streamline the diffing process.

#### Download

You can `download` the current contract code of a deployed contract via `make download chain=polygon address=0x00`. This will download the contract source for specified address to `src/etherscan/chain_address`. This command works for all chains with a etherscan compatible block explorer.

#### Git diff

You can `git-diff` a downloaded contract against your src via `make git-diff before=./etherscan/chain_address after=./src out=filename`. This command will diff the two folders via git patience algorithm and write the output to `diffs/filename.md`.

**Caveat**: If the onchain implementation was verified using flatten, for generating the diff you need to flatten the new contract via `forge flatten` and supply the flattened file instead fo the whole `./src` folder.
