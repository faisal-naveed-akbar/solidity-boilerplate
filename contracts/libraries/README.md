## Solidity Libraries

Libraries are very similar to contracts but they do not store state. Using one is a gas saving strategy that comes in handy when you have a contract that will be deployed many times — but some of the code only needs to be deployed once. By splitting those functions off from a contract into a library, you are deploying less code in the contract— so the gas costs are less.

### Deployment Issues
The library and the calling contract get deployed separately and so they will have separate addresses.

In order to use a library, the calling contract must have the library’s address.

[More on Solidity Libraries](https://cryptomarketpool.com/libraries-in-solidity/)

