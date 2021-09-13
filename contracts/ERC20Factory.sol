// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;
pragma experimental ABIEncoderV2;

import './TokenDeployer.sol';

contract ERC20Factory is TokenDeployer{

    address[] deployedTokens;
    string[] tokenTypes = ['Basic', 'NFT'];

    constructor () public{
    }

    event TokenDeployed(address tokenAddress, string name, string symbol,string tokenType);
    event NoSuchTokenType(string tokenType);
    event TokenTypesAvailable(string[] types);
    event TotalTokensDeployed(address[] deployedTokens, uint256 totalTokensDeployed);

    function CreateToken(string memory _tokenName, string memory _tokenSymbol, string memory _tokenType) 
    public 
    returns (address deployedToken){
        
        address newToken = deploy(address(this), _tokenName, _tokenSymbol, _tokenType);
        deployedTokens.push(newToken);

        if(newToken != 0x0000000000000000000000000000000000000000)
            emit TokenDeployed(newToken, _tokenName, _tokenSymbol, _tokenType);
        else
            emit NoSuchTokenType(_tokenType);
        
        return newToken;

    }

    function getAvailableTokenTypes() public{

         emit TokenTypesAvailable(tokenTypes);

    }

    function getDeployedTokens() public {
        emit TotalTokensDeployed(deployedTokens, deployedTokens.length);
    }

    
}