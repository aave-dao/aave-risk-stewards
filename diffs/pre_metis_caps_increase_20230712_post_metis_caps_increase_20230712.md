## Reserve changes

### Reserve altered

#### WETH ([0x420000000000000000000000000000000000000A](https://andromeda-explorer.metis.io/address/0x420000000000000000000000000000000000000A))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 100 WETH | 200 WETH |
| borrowCap | 60 WETH | 120 WETH |


#### Metis ([0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000](https://andromeda-explorer.metis.io/address/0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 15,000 Metis | 30,000 Metis |


## Raw diff

```json
{
  "reserves": {
    "0x420000000000000000000000000000000000000A": {
      "borrowCap": {
        "from": 60,
        "to": 120
      },
      "supplyCap": {
        "from": 100,
        "to": 200
      }
    },
    "0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000": {
      "supplyCap": {
        "from": 15000,
        "to": 30000
      }
    }
  }
}
```