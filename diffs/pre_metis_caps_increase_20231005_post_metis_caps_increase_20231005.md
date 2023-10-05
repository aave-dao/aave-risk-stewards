## Reserve changes

### Reserve altered

#### Metis ([0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000](https://andromeda-explorer.metis.io/address/0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 240,000 Metis | 360,000 Metis |
| borrowCap | 4,000 Metis | 8,000 Metis |


#### m.USDC ([0xEA32A96608495e54156Ae48931A7c20f0dcc1a21](https://andromeda-explorer.metis.io/address/0xEA32A96608495e54156Ae48931A7c20f0dcc1a21))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 2,000,000 m.USDC | 4,000,000 m.USDC |
| borrowCap | 2,000,000 m.USDC | 4,000,000 m.USDC |


#### m.USDT ([0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC](https://andromeda-explorer.metis.io/address/0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 2,000,000 m.USDT | 4,000,000 m.USDT |
| borrowCap | 2,000,000 m.USDT | 4,000,000 m.USDT |


## Raw diff

```json
{
  "reserves": {
    "0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000": {
      "borrowCap": {
        "from": 4000,
        "to": 8000
      },
      "supplyCap": {
        "from": 240000,
        "to": 360000
      }
    },
    "0xEA32A96608495e54156Ae48931A7c20f0dcc1a21": {
      "borrowCap": {
        "from": 2000000,
        "to": 4000000
      },
      "supplyCap": {
        "from": 2000000,
        "to": 4000000
      }
    },
    "0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC": {
      "borrowCap": {
        "from": 2000000,
        "to": 4000000
      },
      "supplyCap": {
        "from": 2000000,
        "to": 4000000
      }
    }
  }
}
```