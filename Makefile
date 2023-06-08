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

# Increase Supply Caps for LSTs on AAVE V3 Ethereum 20230530
mainnet-supply-caps-increase-20230530:; forge script src/MainnetLSTsSupplyCapsIncrease_20230530.s.sol:MainnetLSTsSupplyCapsIncrease_20230530 --rpc-url mainnet --sig "run(bool)" false -vv
safe-mainnet-supply-caps-increase-20230530:; forge script src/MainnetLSTsSupplyCapsIncrease_20230530.s.sol:MainnetLSTsSupplyCapsIncrease_20230530 --rpc-url mainnet --sig "run(bool)" true -vv

# Increase Supply Caps for LSTs on AAVE V3 Arbitrum 20230530
arbitrum-supply-caps-increase-20230530:; forge script src/ArbitrumLSTsSupplyCapsIncrease_20230530.s.sol:ArbitrumLSTsSupplyCapsIncrease_20230530 --rpc-url arbitrum --sig "run(bool)" false -vv
safe-arbitrum-supply-caps-increase-20230530:; forge script src/ArbitrumLSTsSupplyCapsIncrease_20230530.s.sol:ArbitrumLSTsSupplyCapsIncrease_20230530 --rpc-url arbitrum --sig "run(bool)" true -vv

# Increase Supply Caps for LSTs on AAVE V3 Optimism 20230530
optimism-supply-caps-increase-20230530:; forge script src/OptimismLSTsSupplyCapsIncrease_20230530.s.sol:OptimismLSTsSupplyCapsIncrease_20230530 --rpc-url optimism --sig "run(bool)" false -vv
safe-optimism-supply-caps-increase-20230530:; forge script src/OptimismLSTsSupplyCapsIncrease_20230530.s.sol:OptimismLSTsSupplyCapsIncrease_20230530 --rpc-url optimism --sig "run(bool)" true -vv

# Increase Supply Caps AAVE V3 Polygon 20230602
polygon-caps-increase-20230602:; forge script src/PolygonCapsIncrease_20230602.s.sol:PolygonCapsIncrease_20230602 --rpc-url polygon --sig "run(bool)" false -vv
safe-polygon-caps-increase-20230602:; forge script src/PolygonCapsIncrease_20230602.s.sol:PolygonCapsIncrease_20230602 --rpc-url polygon --sig "run(bool)" true -vv

# Increase Supply Caps AAVE V3 Polygon 20230607
polygon-caps-increase-20230607:; forge script src/PolygonCapsIncrease_20230607.s.sol:PolygonCapsIncrease_20230607 --rpc-url polygon --sig "run(bool)" false
safe-polygon-caps-increase-20230607:; forge script src/PolygonCapsIncrease_20230607.s.sol:PolygonCapsIncrease_20230607 --rpc-url polygon --sig "run(bool)" true -vv
