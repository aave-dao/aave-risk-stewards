# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# deps
update:; forge update

# Build & test
build  :; forge build --sizes
test   :; forge test -vvv

# Utilities
download :; cast etherscan-source --chain ${chain} -d src/etherscan/${chain}_${address} ${address}
git-diff :
	@mkdir -p diffs
	@printf '%s\n%s\n%s\n' "\`\`\`diff" "$$(git diff --no-index --diff-algorithm=patience --ignore-space-at-eol ${before} ${after})" "\`\`\`" > diffs/${out}.md

mainnet-example:; forge script src/MainnetExample.s.sol:MainnetExample --rpc-url mainnet --sig "run(bool)" false -vv
mainnet-example-safe:; forge script src/MainnetExample.s.sol:MainnetExample --rpc-url mainnet --sig "run(bool)" true -vv
