## Reserve changes

### Reserve altered

#### WBTC ([0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f](https://arbiscan.io/address/0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 4,200 WBTC | 5,000 WBTC |


#### WETH ([0x82aF49447D8a07e3bd95BD0d56f35241523fBab1](https://arbiscan.io/address/0x82aF49447D8a07e3bd95BD0d56f35241523fBab1))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 84,000 WETH | 100,000 WETH |
| borrowCap | 72,000 WETH | 90,000 WETH |


#### USDC ([0xaf88d065e77c8cC2239327C5EDb3A432268e5831](https://arbiscan.io/address/0xaf88d065e77c8cC2239327C5EDb3A432268e5831))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 200,000,000 USDC | 300,000,000 USDC |
| borrowCap | 180,000,000 USDC | 270,000,000 USDC |


## Raw diff

```json
{
  "reserves": {
    "0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f": {
      "supplyCap": {
        "from": 4200,
        "to": 5000
      }
    },
    "0x82aF49447D8a07e3bd95BD0d56f35241523fBab1": {
      "borrowCap": {
        "from": 72000,
        "to": 90000
      },
      "supplyCap": {
        "from": 84000,
        "to": 100000
      }
    },
    "0xaf88d065e77c8cC2239327C5EDb3A432268e5831": {
      "borrowCap": {
        "from": 180000000,
        "to": 270000000
      },
      "supplyCap": {
        "from": 200000000,
        "to": 300000000
      }
    }
  }
}
```