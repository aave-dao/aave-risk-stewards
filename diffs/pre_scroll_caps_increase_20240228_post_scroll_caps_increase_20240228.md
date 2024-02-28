## Reserve changes

### Reserve altered

#### WETH ([0x5300000000000000000000000000000000000004](https://scrollscan.com/address/0x5300000000000000000000000000000000000004))

| description | value before | value after |
| --- | --- | --- |
| borrowCap | 400 WETH | 600 WETH |


#### wstETH ([0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32](https://scrollscan.com/address/0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 520 wstETH | 700 wstETH |


## Raw diff

```json
{
  "reserves": {
    "0x5300000000000000000000000000000000000004": {
      "borrowCap": {
        "from": 400,
        "to": 600
      }
    },
    "0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32": {
      "supplyCap": {
        "from": 520,
        "to": 700
      }
    }
  }
}
```