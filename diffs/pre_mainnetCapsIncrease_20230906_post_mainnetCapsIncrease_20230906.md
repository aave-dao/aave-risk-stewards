## Reserve changes

### Reserve altered

#### UNI ([0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984](https://etherscan.io/address/0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 2,000,000 UNI | 4,000,000 UNI |


#### MKR ([0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2](https://etherscan.io/address/0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 10,000 MKR | 15,000 MKR |
| borrowCap | 1,500 MKR | 3,000 MKR |


#### cbETH ([0xBe9895146f7AF43049ca1c1AE358B0541Ea49704](https://etherscan.io/address/0xBe9895146f7AF43049ca1c1AE358B0541Ea49704))

| description | value before | value after |
| --- | --- | --- |
| borrowCap | 1,200 cbETH | 2,400 cbETH |


#### RPL ([0xD33526068D116cE69F19A9ee46F0bd304F21A51f](https://etherscan.io/address/0xD33526068D116cE69F19A9ee46F0bd304F21A51f))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 420,000 RPL | 840,000 RPL |


## Raw diff

```json
{
  "reserves": {
    "0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984": {
      "supplyCap": {
        "from": 2000000,
        "to": 4000000
      }
    },
    "0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2": {
      "borrowCap": {
        "from": 1500,
        "to": 3000
      },
      "supplyCap": {
        "from": 10000,
        "to": 15000
      }
    },
    "0xBe9895146f7AF43049ca1c1AE358B0541Ea49704": {
      "borrowCap": {
        "from": 1200,
        "to": 2400
      }
    },
    "0xD33526068D116cE69F19A9ee46F0bd304F21A51f": {
      "supplyCap": {
        "from": 420000,
        "to": 840000
      }
    }
  }
}
```