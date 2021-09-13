// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BasicToken is ERC20 {


    constructor (string memory tokenName, string memory tokenSymbol) public ERC20(tokenName, tokenSymbol){
        informDeployed(tokenName, tokenSymbol, 'ERC20 token created and deployed');
    }

    event TokenDeployed(address myAddress, string name, string symbol,string tokenType);

    function informDeployed(string memory name, string memory symbol, string memory tokenType) public{

        emit TokenDeployed(address(this), name, symbol, tokenType);
    }

    
}
