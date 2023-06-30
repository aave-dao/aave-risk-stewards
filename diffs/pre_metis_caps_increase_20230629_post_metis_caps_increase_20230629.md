## Reserve changes

### Reserve altered

#### WETH ([0x420000000000000000000000000000000000000A](https://andromeda-explorer.metis.io/address/0x420000000000000000000000000000000000000A))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 50 WETH | 100 WETH |
| borrowCap | 30 WETH | 60 WETH |


#### Metis ([0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000](https://andromeda-explorer.metis.io/address/0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 7,500 Metis | 15,000 Metis |


## Raw diff

```json
{
  "reserves": {
    "0x420000000000000000000000000000000000000A": {
      "borrowCap": {
        "from": 30,
        "to": 60
      },
      "supplyCap": {
        "from": 50,
        "to": 100
      }
    },
    "0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000": {
      "supplyCap": {
        "from": 7500,
        "to": 15000
      }
    }
  }
}
```