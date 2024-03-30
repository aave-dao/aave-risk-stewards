## Reserve changes

### Reserve altered

#### wstETH ([0x5979D7b546E38E414F7E9822514be443A4800529](https://arbiscan.io/address/0x5979D7b546E38E414F7E9822514be443A4800529))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 60,000 wstETH | 69,000 wstETH |


#### WETH ([0x82aF49447D8a07e3bd95BD0d56f35241523fBab1](https://arbiscan.io/address/0x82aF49447D8a07e3bd95BD0d56f35241523fBab1))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 70,000 WETH | 84,000 WETH |
| borrowCap | 60,000 WETH | 72,000 WETH |


## Raw diff

```json
{
  "reserves": {
    "0x5979D7b546E38E414F7E9822514be443A4800529": {
      "supplyCap": {
        "from": 60000,
        "to": 69000
      }
    },
    "0x82aF49447D8a07e3bd95BD0d56f35241523fBab1": {
      "borrowCap": {
        "from": 60000,
        "to": 72000
      },
      "supplyCap": {
        "from": 70000,
        "to": 84000
      }
    }
  }
}
```