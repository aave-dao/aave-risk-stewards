## Reserve changes

### Reserve altered

#### LUSD ([0x5f98805A4E8be255a32880FDeC7F6728C6568bA0](https://etherscan.io/address/0x5f98805A4E8be255a32880FDeC7F6728C6568bA0))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 12,000,000 LUSD | 18,000,000 LUSD |


#### USDT ([0xdAC17F958D2ee523a2206206994597C13D831ec7](https://etherscan.io/address/0xdAC17F958D2ee523a2206206994597C13D831ec7))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 300,000,000 USDT | 600,000,000 USDT |
| borrowCap | 250,000,000 USDT | 500,000,000 USDT |


## Raw diff

```json
{
  "reserves": {
    "0x5f98805A4E8be255a32880FDeC7F6728C6568bA0": {
      "supplyCap": {
        "from": 12000000,
        "to": 18000000
      }
    },
    "0xdAC17F958D2ee523a2206206994597C13D831ec7": {
      "borrowCap": {
        "from": 250000000,
        "to": 500000000
      },
      "supplyCap": {
        "from": 300000000,
        "to": 600000000
      }
    }
  }
}
```