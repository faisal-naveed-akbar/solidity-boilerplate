// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NonFungibleToken is ERC721, Ownable {

    constructor (string memory tokenName, string memory tokenSymbol) public ERC721(tokenName, tokenSymbol){
        informDeployed(tokenName, tokenSymbol, 'ERC20 token created and deployed');
        super._mint(msg.sender, totalSupply().add(1));
    }

    event TokenDeployed(string name, string symbol,string tokenType);

    function informDeployed(string memory name, string memory symbol, string memory tokenType) public{

        emit TokenDeployed(name, symbol, tokenType);
    }

    function mint(address to) public onlyOwner {
        super._mint(to, totalSupply().add(1));
    }
    
}