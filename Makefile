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

# only emit
mainnet-example:; forge script src/MainnetExample.s.sol:MainnetExample --rpc-url mainnet --sig "run(bool)" false -vv
polygon-example:; forge script src/PolygonExample.s.sol:PolygonExample --rpc-url polygon --sig "run(bool)" false -vv
metis-example:; forge script src/MetisExample.s.sol:MetisExample --rpc-url metis --sig "run(bool)" false -vv
optimism-example:; forge script src/OptimismExample.s.sol:OptimismExample --rpc-url optimism --sig "run(bool)" false -vv
arbitrum-example:; forge script src/ArbitrumExample.s.sol:ArbitrumExample --rpc-url arbitrum --sig "run(bool)" false -vv
avalanche-example:; forge script src/AvalancheExample.s.sol:AvalancheExample --rpc-url avalanche --sig "run(bool)" false -vv

# Broadcast to safe backend
safe-mainnet-example:; forge script src/MainnetExample.s.sol:MainnetExample --rpc-url mainnet --sig "run(bool)" true -vv
safe-polygon-example:; forge script src/PolygonExample.s.sol:PolygonExample --rpc-url polygon --sig "run(bool)" true -vv
safe-metis-example:; forge script src/MetisExample.s.sol:MetisExample --rpc-url metis --sig "run(bool)" true -vv
safe-optimism-example:; forge script src/OptimismExample.s.sol:OptimismExample --rpc-url optimism --sig "run(bool)" true -vv
safe-arbitrum-example:; forge script src/ArbitrumExample.s.sol:ArbitrumExample --rpc-url arbitrum --sig "run(bool)" true -vv
safe-avalanche-example:; forge script src/AvalancheExample.s.sol:AvalancheExample --rpc-url avalanche --sig "run(bool)" true -vv

# repro
minimal-metis-example:; forge script src/MinimalMetisExample.s.sol:MinimalMetisExample --rpc-url metis -vv
