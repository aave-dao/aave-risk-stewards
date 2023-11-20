## Reserve changes

### Reserve altered

#### Metis ([0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000](https://andromeda-explorer.metis.io/address/0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000))

| description | value before | value after |
| --- | --- | --- |
| borrowCap | 8,000 Metis | 16,000 Metis |


#### m.USDC ([0xEA32A96608495e54156Ae48931A7c20f0dcc1a21](https://andromeda-explorer.metis.io/address/0xEA32A96608495e54156Ae48931A7c20f0dcc1a21))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 4,000,000 m.USDC | 6,000,000 m.USDC |


#### m.USDT ([0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC](https://andromeda-explorer.metis.io/address/0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 4,000,000 m.USDT | 5,000,000 m.USDT |


## Raw diff

```json
{
  "reserves": {
    "0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000": {
      "borrowCap": {
        "from": 8000,
        "to": 16000
      }
    },
    "0xEA32A96608495e54156Ae48931A7c20f0dcc1a21": {
      "supplyCap": {
        "from": 4000000,
        "to": 6000000
      }
    },
    "0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC": {
      "supplyCap": {
        "from": 4000000,
        "to": 5000000
      }
    }
  }
}
```