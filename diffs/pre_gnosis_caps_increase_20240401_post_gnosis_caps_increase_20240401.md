## Reserve changes

### Reserve altered

#### GNO ([0x9C58BAcC331c9aa871AFD802DB6379a98e80CEdb](https://gnosisscan.io/address/0x9C58BAcC331c9aa871AFD802DB6379a98e80CEdb))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 40,000 GNO | 60,000 GNO |


#### USDC ([0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83](https://gnosisscan.io/address/0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 7,400,000 USDC | 11,000,000 USDC |
| borrowCap | 7,400,000 USDC | 11,000,000 USDC |


#### sDAI ([0xaf204776c7245bF4147c2612BF6e5972Ee483701](https://gnosisscan.io/address/0xaf204776c7245bF4147c2612BF6e5972Ee483701))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 40,000,000 sDAI | 48,000,000 sDAI |


#### EURe ([0xcB444e90D8198415266c6a2724b7900fb12FC56E](https://gnosisscan.io/address/0xcB444e90D8198415266c6a2724b7900fb12FC56E))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,500,000 EURe | 3,000,000 EURe |
| borrowCap | 1,400,000 EURe | 2,800,000 EURe |


#### WXDAI ([0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d](https://gnosisscan.io/address/0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 18,000,000 WXDAI | 36,000,000 WXDAI |
| borrowCap | 18,000,000 WXDAI | 36,000,000 WXDAI |


## Raw diff

```json
{
  "reserves": {
    "0x9C58BAcC331c9aa871AFD802DB6379a98e80CEdb": {
      "supplyCap": {
        "from": 40000,
        "to": 60000
      }
    },
    "0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83": {
      "borrowCap": {
        "from": 7400000,
        "to": 11000000
      },
      "supplyCap": {
        "from": 7400000,
        "to": 11000000
      }
    },
    "0xaf204776c7245bF4147c2612BF6e5972Ee483701": {
      "supplyCap": {
        "from": 40000000,
        "to": 48000000
      }
    },
    "0xcB444e90D8198415266c6a2724b7900fb12FC56E": {
      "borrowCap": {
        "from": 1400000,
        "to": 2800000
      },
      "supplyCap": {
        "from": 1500000,
        "to": 3000000
      }
    },
    "0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d": {
      "borrowCap": {
        "from": 18000000,
        "to": 36000000
      },
      "supplyCap": {
        "from": 18000000,
        "to": 36000000
      }
    }
  }
}
```