## Reserve changes

### Reserve altered

#### WETH ([0x4200000000000000000000000000000000000006](https://basescan.org/address/0x4200000000000000000000000000000000000006))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 12,000 WETH | 18,000 WETH |
| borrowCap | 6,000 WETH | 9,000 WETH |


#### USDC ([0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913](https://basescan.org/address/0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 30,000,000 USDC | 60,000,000 USDC |
| borrowCap | 27,000,000 USDC | 54,000,000 USDC |


## Raw diff

```json
{
  "reserves": {
    "0x4200000000000000000000000000000000000006": {
      "borrowCap": {
        "from": 6000,
        "to": 9000
      },
      "supplyCap": {
        "from": 12000,
        "to": 18000
      }
    },
    "0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913": {
      "borrowCap": {
        "from": 27000000,
        "to": 54000000
      },
      "supplyCap": {
        "from": 30000000,
        "to": 60000000
      }
    }
  }
}
```