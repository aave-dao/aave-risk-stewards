## Reserve changes

### Reserve altered

#### WETH ([0x5300000000000000000000000000000000000004](https://scrollscan.com/address/0x5300000000000000000000000000000000000004))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 2,000 WETH | 3,000 WETH |
| borrowCap | 1,200 WETH | 2,400 WETH |


#### wstETH ([0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32](https://scrollscan.com/address/0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,000 wstETH | 1,250 wstETH |
| borrowCap | 45 wstETH | 90 wstETH |


## Raw diff

```json
{
  "reserves": {
    "0x5300000000000000000000000000000000000004": {
      "borrowCap": {
        "from": 1200,
        "to": 2400
      },
      "supplyCap": {
        "from": 2000,
        "to": 3000
      }
    },
    "0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32": {
      "borrowCap": {
        "from": 45,
        "to": 90
      },
      "supplyCap": {
        "from": 1000,
        "to": 1250
      }
    }
  }
}
```