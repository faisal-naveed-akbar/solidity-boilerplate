# Solidity Boilerplate

This project demonstrates an implementation, deployment, testing and coverage reports similar to that of UniswapV3. It comes with some sample contracts, like a factory that generates two types of tokens, one of them being a basic token that implements the ERC20 protocol, and the other being the Non Fungible Token that implements the ERC721 protocol. There is a deployer that deploys the contracts and returns the addresses.

## Try executing the following commands:

### npm install
First of all, clone this project, go into the root directory, type npm install and get all the packages listed in the package.json file to make your project up and running.

To make this project interact with a local ethereum blockchain, download your ganache client and start it, make sure that the port number and the network_id in the settings > server in your ganache client is the same as configured in truffle-config.js file.

### truffle compile
Truffle helps you with compilation, deployment and testing of your solidity smart contracts. Type this command to compile all your solidity contracts. You can change the solidity compiler version in truffle-config.js file in case you come accross any errors regrading the solidity compiler.

### truffle deploy
Truffle deploy will deploy all your smart contracts on to the locally running ethereum blockchain.

### truffle test
This command lets you run all your tests. You can modify the path in the package.json test script if your tests reside in some other folder.

### truffle migrate --reset
This command will create the artifacts of your deployed contracts, which will be used later on to generate test coverage reports.

### npm run coverage
This command will run all the test cases and let you know the statement, function, and branch coverages. It will also generate an html file, which when run on a browser, will make the coverage report easy to comprehend.

### npx oz send-tx
This command can be used to access the individual functions of all the contracts. These functions can be passed arguments from the console and be tested.
