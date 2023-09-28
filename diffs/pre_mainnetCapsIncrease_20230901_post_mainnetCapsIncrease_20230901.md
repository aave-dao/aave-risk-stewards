## Reserve changes

### Reserve altered

#### wstETH ([0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0](https://etherscan.io/address/0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 600,000 wstETH | 750,000 wstETH |
| borrowCap | 12,000 wstETH | 24,000 wstETH |


#### RPL ([0xD33526068D116cE69F19A9ee46F0bd304F21A51f](https://etherscan.io/address/0xD33526068D116cE69F19A9ee46F0bd304F21A51f))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 210,000 RPL | 420,000 RPL |
| borrowCap | 105,000 RPL | 160,000 RPL |


## Raw diff

```json
{
  "reserves": {
    "0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0": {
      "borrowCap": {
        "from": 12000,
        "to": 24000
      },
      "supplyCap": {
        "from": 600000,
        "to": 750000
      }
    },
    "0xD33526068D116cE69F19A9ee46F0bd304F21A51f": {
      "borrowCap": {
        "from": 105000,
        "to": 160000
      },
      "supplyCap": {
        "from": 210000,
        "to": 420000
      }
    }
  }
}
```