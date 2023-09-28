## Reserve changes

### Reserve altered

#### wstETH ([0x5979D7b546E38E414F7E9822514be443A4800529](https://arbiscan.io/address/0x5979D7b546E38E414F7E9822514be443A4800529))

| description | value before | value after |
| --- | --- | --- |
| borrowCap | 800 wstETH | 1,600 wstETH |


#### LUSD ([0x93b346b6BC2548dA6A1E7d98E9a421B42541425b](https://arbiscan.io/address/0x93b346b6BC2548dA6A1E7d98E9a421B42541425b))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 900,000 LUSD | 1,400,000 LUSD |


#### LINK ([0xf97f4df75117a78c1A5a0DBb814Af92458539FB4](https://arbiscan.io/address/0xf97f4df75117a78c1A5a0DBb814Af92458539FB4))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 810,000 LINK | 1,300,000 LINK |


## Raw diff

```json
{
  "reserves": {
    "0x5979D7b546E38E414F7E9822514be443A4800529": {
      "borrowCap": {
        "from": 800,
        "to": 1600
      }
    },
    "0x93b346b6BC2548dA6A1E7d98E9a421B42541425b": {
      "supplyCap": {
        "from": 900000,
        "to": 1400000
      }
    },
    "0xf97f4df75117a78c1A5a0DBb814Af92458539FB4": {
      "supplyCap": {
        "from": 810000,
        "to": 1300000
      }
    }
  }
}
```