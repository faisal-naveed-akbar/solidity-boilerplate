// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "../BasicToken.sol";

contract MockBasicToken {//is BasicToken {

    constructor (string memory tokenName, string memory tokenSymbol) public BasicToken(tokenName, tokenSymbol){
        
    }
}
