## Reserve changes

### Reserve altered

#### USDC ([0x06eFdBFf2a14a7c8E15944D1F4A48F9F95F663A4](https://scrollscan.com/address/0x06eFdBFf2a14a7c8E15944D1F4A48F9F95F663A4))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 4,000,000 USDC | 5,000,000 USDC |
| borrowCap | 1,800,000 USDC | 3,600,000 USDC |


#### WETH ([0x5300000000000000000000000000000000000004](https://scrollscan.com/address/0x5300000000000000000000000000000000000004))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,500 WETH | 2,000 WETH |
| borrowCap | 600 WETH | 1,200 WETH |


## Raw diff

```json
{
  "reserves": {
    "0x06eFdBFf2a14a7c8E15944D1F4A48F9F95F663A4": {
      "borrowCap": {
        "from": 1800000,
        "to": 3600000
      },
      "supplyCap": {
        "from": 4000000,
        "to": 5000000
      }
    },
    "0x5300000000000000000000000000000000000004": {
      "borrowCap": {
        "from": 600,
        "to": 1200
      },
      "supplyCap": {
        "from": 1500,
        "to": 2000
      }
    }
  }
}
```