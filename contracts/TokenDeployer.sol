// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.4.22 <0.8.0;

import './BasicToken.sol';
import './NonFungibleToken.sol';
import './interfaces/ITokenDeployer.sol';

 contract TokenDeployer is ITokenDeployer {

    function deploy(
        address factory,
        string memory tokenName,
        string memory tokenSymbol,
        string memory tokenType
    ) public override returns (address deployedToken) {
        

        address a = 0x0000000000000000000000000000000000000000;

        if(keccak256(abi.encodePacked((tokenType))) == keccak256(abi.encodePacked(('Basic')))){
            a = address(new BasicToken(tokenName, tokenSymbol));
        }
        
        else if(keccak256(abi.encodePacked((tokenType))) == keccak256(abi.encodePacked(('NFT')))){
            a = address(new NonFungibleToken(tokenName, tokenSymbol));
        }

        return a;
            
    }
 }