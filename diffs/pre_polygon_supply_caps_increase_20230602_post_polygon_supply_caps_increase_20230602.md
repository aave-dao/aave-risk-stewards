## Reserve changes

### Reserve altered

#### wstETH ([0x03b54A6e9a984069379fae1a4fC4dBAE93B3bCCD](https://polygonscan.com/address/0x03b54A6e9a984069379fae1a4fC4dBAE93B3bCCD))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 2,400 wstETH | 2,700 wstETH |


#### WMATIC ([0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270](https://polygonscan.com/address/0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 90,000,000 WMATIC | 105,000,000 WMATIC |
| borrowCap | 50,000,000 WMATIC | 67,000,000 WMATIC |


#### stMATIC ([0x3A58a54C066FdC0f2D55FC9C89F0415C92eBf3C4](https://polygonscan.com/address/0x3A58a54C066FdC0f2D55FC9C89F0415C92eBf3C4))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 30,000,000 stMATIC | 32,000,000 stMATIC |


## Raw diff

```json
{
  "reserves": {
    "0x03b54A6e9a984069379fae1a4fC4dBAE93B3bCCD": {
      "supplyCap": {
        "from": 2400,
        "to": 2700
      }
    },
    "0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270": {
      "borrowCap": {
        "from": 50000000,
        "to": 67000000
      },
      "supplyCap": {
        "from": 90000000,
        "to": 105000000
      }
    },
    "0x3A58a54C066FdC0f2D55FC9C89F0415C92eBf3C4": {
      "supplyCap": {
        "from": 30000000,
        "to": 32000000
      }
    }
  }
}
```