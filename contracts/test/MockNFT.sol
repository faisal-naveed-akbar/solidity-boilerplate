// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "../NonFungibleToken.sol";

contract MockNFT {//is NonFungibleToken {

    constructor (string memory tokenName, string memory tokenSymbol) public NonFungibleToken(tokenName, tokenSymbol){
        
    }
    
}
