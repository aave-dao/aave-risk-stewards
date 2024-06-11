## Reserve changes

### Reserve altered

#### USDC ([0x06eFdBFf2a14a7c8E15944D1F4A48F9F95F663A4](https://scrollscan.com/address/0x06eFdBFf2a14a7c8E15944D1F4A48F9F95F663A4))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 5,000,000 USDC | 7,500,000 USDC |
| borrowCap | 3,600,000 USDC | 6,500,000 USDC |


#### wstETH ([0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32](https://scrollscan.com/address/0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 700 wstETH | 1,000 wstETH |


## Raw diff

```json
{
  "reserves": {
    "0x06eFdBFf2a14a7c8E15944D1F4A48F9F95F663A4": {
      "borrowCap": {
        "from": 3600000,
        "to": 6500000
      },
      "supplyCap": {
        "from": 5000000,
        "to": 7500000
      }
    },
    "0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32": {
      "supplyCap": {
        "from": 700,
        "to": 1000
      }
    }
  }
}
```