## Reserve changes

### Reserve altered

#### WETH ([0x420000000000000000000000000000000000000A](https://andromeda-explorer.metis.io/address/0x420000000000000000000000000000000000000A))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 300 WETH | 600 WETH |
| borrowCap | 180 WETH | 360 WETH |


#### m.DAI ([0x4c078361FC9BbB78DF910800A991C7c3DD2F6ce0](https://andromeda-explorer.metis.io/address/0x4c078361FC9BbB78DF910800A991C7c3DD2F6ce0))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 950,000 m.DAI | 1,100,000 m.DAI |


#### m.USDC ([0xEA32A96608495e54156Ae48931A7c20f0dcc1a21](https://andromeda-explorer.metis.io/address/0xEA32A96608495e54156Ae48931A7c20f0dcc1a21))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 8,000,000 m.USDC | 10,000,000 m.USDC |
| borrowCap | 7,200,000 m.USDC | 9,000,000 m.USDC |


#### m.USDT ([0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC](https://andromeda-explorer.metis.io/address/0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 6,500,000 m.USDT | 8,000,000 m.USDT |
| borrowCap | 5,900,000 m.USDT | 7,200,000 m.USDT |


## Raw diff

```json
{
  "reserves": {
    "0x420000000000000000000000000000000000000A": {
      "borrowCap": {
        "from": 180,
        "to": 360
      },
      "supplyCap": {
        "from": 300,
        "to": 600
      }
    },
    "0x4c078361FC9BbB78DF910800A991C7c3DD2F6ce0": {
      "supplyCap": {
        "from": 950000,
        "to": 1100000
      }
    },
    "0xEA32A96608495e54156Ae48931A7c20f0dcc1a21": {
      "borrowCap": {
        "from": 7200000,
        "to": 9000000
      },
      "supplyCap": {
        "from": 8000000,
        "to": 10000000
      }
    },
    "0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC": {
      "borrowCap": {
        "from": 5900000,
        "to": 7200000
      },
      "supplyCap": {
        "from": 6500000,
        "to": 8000000
      }
    }
  }
}
```