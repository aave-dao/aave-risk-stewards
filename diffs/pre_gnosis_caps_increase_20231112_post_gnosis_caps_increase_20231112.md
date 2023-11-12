## Reserve changes

### Reserve altered

#### wstETH ([0x6C76971f98945AE98dD7d4DFcA8711ebea946eA6](https://blockscout.com/xdai/mainnet/address/0x6C76971f98945AE98dD7d4DFcA8711ebea946eA6))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 4,000 wstETH | 5,000 wstETH |


#### USDC ([0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83](https://blockscout.com/xdai/mainnet/address/0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,000,000 USDC | 2,000,000 USDC |
| borrowCap | 1,000,000 USDC | 1,800,000 USDC |


#### sDAI ([0xaf204776c7245bF4147c2612BF6e5972Ee483701](https://blockscout.com/xdai/mainnet/address/0xaf204776c7245bF4147c2612BF6e5972Ee483701))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,500,000 sDAI | 3,000,000 sDAI |


#### EURe ([0xcB444e90D8198415266c6a2724b7900fb12FC56E](https://blockscout.com/xdai/mainnet/address/0xcB444e90D8198415266c6a2724b7900fb12FC56E))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 500,000 EURe | 1,000,000 EURe |
| borrowCap | 500,000 EURe | 900,000 EURe |


#### WXDAI ([0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d](https://blockscout.com/xdai/mainnet/address/0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,500,000 WXDAI | 3,000,000 WXDAI |
| borrowCap | 1,500,000 WXDAI | 2,700,000 WXDAI |


## Raw diff

```json
{
  "reserves": {
    "0x6C76971f98945AE98dD7d4DFcA8711ebea946eA6": {
      "supplyCap": {
        "from": 4000,
        "to": 5000
      }
    },
    "0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83": {
      "borrowCap": {
        "from": 1000000,
        "to": 1800000
      },
      "supplyCap": {
        "from": 1000000,
        "to": 2000000
      }
    },
    "0xaf204776c7245bF4147c2612BF6e5972Ee483701": {
      "supplyCap": {
        "from": 1500000,
        "to": 3000000
      }
    },
    "0xcB444e90D8198415266c6a2724b7900fb12FC56E": {
      "borrowCap": {
        "from": 500000,
        "to": 900000
      },
      "supplyCap": {
        "from": 500000,
        "to": 1000000
      }
    },
    "0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d": {
      "borrowCap": {
        "from": 1500000,
        "to": 2700000
      },
      "supplyCap": {
        "from": 1500000,
        "to": 3000000
      }
    }
  }
}
```