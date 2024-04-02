## Reserve changes

### Reserves altered

#### USDC ([0x0b2C639c533813f4Aa9D7837CAf62653d097Ff85](https://optimistic.etherscan.io/address/0x0b2C639c533813f4Aa9D7837CAf62653d097Ff85))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 25,000,000 USDC | 50,000,000 USDC |
| borrowCap | 20,000,000 USDC | 40,000,000 USDC |


## Raw diff

```json
{
  "reserves": {
    "0x0b2C639c533813f4Aa9D7837CAf62653d097Ff85": {
      "borrowCap": {
        "from": 20000000,
        "to": 40000000
      },
      "supplyCap": {
        "from": 25000000,
        "to": 50000000
      }
    }
  }
}
```