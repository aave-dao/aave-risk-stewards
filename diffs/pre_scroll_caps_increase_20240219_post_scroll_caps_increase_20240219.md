## Reserve changes

### Reserve altered

#### WETH ([0x5300000000000000000000000000000000000004](https://scrollscan.com/address/0x5300000000000000000000000000000000000004))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 480 WETH | 750 WETH |
| borrowCap | 200 WETH | 400 WETH |


#### wstETH ([0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32](https://scrollscan.com/address/0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 260 wstETH | 520 wstETH |


## Raw diff

```json
{
  "reserves": {
    "0x5300000000000000000000000000000000000004": {
      "borrowCap": {
        "from": 200,
        "to": 400
      },
      "supplyCap": {
        "from": 480,
        "to": 750
      }
    },
    "0xf610A9dfB7C89644979b4A0f27063E9e7d7Cda32": {
      "supplyCap": {
        "from": 260,
        "to": 520
      }
    }
  }
}
```