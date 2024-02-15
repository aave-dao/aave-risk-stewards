## Reserve changes

### Reserve altered

#### wstETH ([0x6C76971f98945AE98dD7d4DFcA8711ebea946eA6](https://blockscout.com/xdai/mainnet/address/0x6C76971f98945AE98dD7d4DFcA8711ebea946eA6))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 5,000 wstETH | 7,500 wstETH |


#### USDC ([0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83](https://blockscout.com/xdai/mainnet/address/0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,500,000 USDC | 3,000,000 USDC |
| borrowCap | 1,500,000 USDC | 2,800,000 USDC |


#### EURe ([0xcB444e90D8198415266c6a2724b7900fb12FC56E](https://blockscout.com/xdai/mainnet/address/0xcB444e90D8198415266c6a2724b7900fb12FC56E))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 750,000 EURe | 1,500,000 EURe |
| borrowCap | 750,000 EURe | 1,400,000 EURe |


## Raw diff

```json
{
  "reserves": {
    "0x6C76971f98945AE98dD7d4DFcA8711ebea946eA6": {
      "supplyCap": {
        "from": 5000,
        "to": 7500
      }
    },
    "0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83": {
      "borrowCap": {
        "from": 1500000,
        "to": 2800000
      },
      "supplyCap": {
        "from": 1500000,
        "to": 3000000
      }
    },
    "0xcB444e90D8198415266c6a2724b7900fb12FC56E": {
      "borrowCap": {
        "from": 750000,
        "to": 1400000
      },
      "supplyCap": {
        "from": 750000,
        "to": 1500000
      }
    }
  }
}
```