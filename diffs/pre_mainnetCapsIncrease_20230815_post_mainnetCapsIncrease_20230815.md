## Reserve changes

### Reserve altered

#### MKR ([0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2](https://etherscan.io/address/0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 6,000 MKR | 10,000 MKR |


#### rETH ([0xae78736Cd615f374D3085123A210448E74Fc6393](https://etherscan.io/address/0xae78736Cd615f374D3085123A210448E74Fc6393))

| description | value before | value after |
| --- | --- | --- |
| borrowCap | 2,400 rETH | 4,800 rETH |


#### USDT ([0xdAC17F958D2ee523a2206206994597C13D831ec7](https://etherscan.io/address/0xdAC17F958D2ee523a2206206994597C13D831ec7))

| description | value before | value after |
| --- | --- | --- |
| borrowCap | 185,000,000 USDT | 250,000,000 USDT |


## Raw diff

```json
{
  "reserves": {
    "0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2": {
      "supplyCap": {
        "from": 6000,
        "to": 10000
      }
    },
    "0xae78736Cd615f374D3085123A210448E74Fc6393": {
      "borrowCap": {
        "from": 2400,
        "to": 4800
      }
    },
    "0xdAC17F958D2ee523a2206206994597C13D831ec7": {
      "borrowCap": {
        "from": 185000000,
        "to": 250000000
      }
    }
  }
}
```