## Reserve changes

### Reserve altered

#### WETH ([0x420000000000000000000000000000000000000A](https://andromeda-explorer.metis.io/address/0x420000000000000000000000000000000000000A))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 200 WETH | 300 WETH |
| borrowCap | 60 WETH | 90 WETH |


#### Metis ([0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000](https://andromeda-explorer.metis.io/address/0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 30,000 Metis | 60,000 Metis |


## Raw diff

```json
{
  "reserves": {
    "0x420000000000000000000000000000000000000A": {
      "borrowCap": {
        "from": 60,
        "to": 90
      },
      "supplyCap": {
        "from": 200,
        "to": 300
      }
    },
    "0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000": {
      "supplyCap": {
        "from": 30000,
        "to": 60000
      }
    }
  }
}
```