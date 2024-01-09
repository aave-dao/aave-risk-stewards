## Reserve changes

### Reserve altered

#### FXS ([0x3432B6A60D23Ca0dFCa7761B7ab56459D9C964D0](https://etherscan.io/address/0x3432B6A60D23Ca0dFCa7761B7ab56459D9C964D0))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 800,000 FXS | 1,200,000 FXS |


#### USDT ([0xdAC17F958D2ee523a2206206994597C13D831ec7](https://etherscan.io/address/0xdAC17F958D2ee523a2206206994597C13D831ec7))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 600,000,000 USDT | 800,000,000 USDT |
| borrowCap | 550,000,000 USDT | 750,000,000 USDT |


## Raw diff

```json
{
  "reserves": {
    "0x3432B6A60D23Ca0dFCa7761B7ab56459D9C964D0": {
      "supplyCap": {
        "from": 800000,
        "to": 1200000
      }
    },
    "0xdAC17F958D2ee523a2206206994597C13D831ec7": {
      "borrowCap": {
        "from": 550000000,
        "to": 750000000
      },
      "supplyCap": {
        "from": 600000000,
        "to": 800000000
      }
    }
  }
}
```