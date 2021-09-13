// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;
pragma experimental ABIEncoderV2;

import './TokenDeployer.sol';

contract ERC20Factory is TokenDeployer{
function c_0xe11a666b(bytes32 c__0xe11a666b) public pure {}


    address[] deployedTokens;
    string[] tokenTypes = ['Basic', 'NFT'];

    constructor () public{c_0xe11a666b(0x40190cd245846e1f99040f8f3830589e872d5b3414db67151a2ef6fbbf5e1389); /* function */ 

    }

    event TokenDeployed(address tokenAddress, string name, string symbol,string tokenType);
    event NoSuchTokenType(string tokenType);
    event TokenTypesAvailable(string[] types);
    event TotalTokensDeployed(address[] deployedTokens, uint256 totalTokensDeployed);

    function CreateToken(string memory _tokenName, string memory _tokenSymbol, string memory _tokenType) 
    public 
    returns (address deployedToken){c_0xe11a666b(0x70ee4a371bbb4e938e1d5a72d1bf5bc18fa19e645485e3d5906dc9af80b76a41); /* function */ 

        
c_0xe11a666b(0x16a0fe97393029a6ce8efa61ecdadc8aef0d6b30b22a16eee065470704254056); /* line */ 
        c_0xe11a666b(0xbc274767f4003859f859a61d6fc3e9a91aa334d882bb17fffc65b56b2cc8c6c8); /* statement */ 
address newToken = deploy(address(this), _tokenName, _tokenSymbol, _tokenType);
c_0xe11a666b(0xd3d32c71a92edb4b9de36d5fe47be7cb3e0ce54296da8ade862fe7305a8049ad); /* line */ 
        c_0xe11a666b(0x7967a5ae27517be3cd1cd9181d866fed50faee73be3ef7a03fca3a4779ebb8f9); /* statement */ 
deployedTokens.push(newToken);

c_0xe11a666b(0xbf740fbcb0fb0140952d91447929724d91cfbe45ff215a957d25d6cf8401011e); /* line */ 
        c_0xe11a666b(0x98ab7093b2711e05806677c82ffde59bf0b3de364357324862df2ed9dad8c6e6); /* statement */ 
if(newToken != 0x0000000000000000000000000000000000000000)
            {c_0xe11a666b(0xcfc3d2c37b5df9b4695eddac03b21fca05a870bb83b9dc1c8c4caa94854da16f); /* statement */ 
c_0xe11a666b(0xea698f651c6c024f715d596a43b5f1246407839e2b4b9de012834cd1de5deb33); /* branch */ 
c_0xe11a666b(0x60b2a15f40f965ceb8797507dd1ea18f95fc9f6417dcc809e0786f70ce22b3f3); /* line */ 
emit TokenDeployed(newToken, _tokenName, _tokenSymbol, _tokenType);}
        else
            {c_0xe11a666b(0x2eabb746bd03c7d36e88510768a6fb332181196854b0afe68956c6e86b284ca1); /* statement */ 
c_0xe11a666b(0x46d84aa83b07de5c5ee268c09958cce588a0ea0b624ae86ee625ac344c09f30c); /* branch */ 
c_0xe11a666b(0x95061563a50fc484003927d57af3ae1aaef55534e51f644613fc89e48f3986c3); /* line */ 
emit NoSuchTokenType(_tokenType);}
        
c_0xe11a666b(0xf525b6e903762c1b78252aec199a7b00c07f6eff76c030dfd4a799ba6d5572a7); /* line */ 
        c_0xe11a666b(0x63776d919f0e960ea3814b5e4ee8f37df57f8f81f21c51e85c178941232bfd94); /* statement */ 
return newToken;

    }

    function getAvailableTokenTypes() public{c_0xe11a666b(0x4c4aacb49c058730a72a654eee5add0a18d5f782f0de9ae5380554b6f50cae70); /* function */ 


c_0xe11a666b(0x925424e1287d4139d60d63631440532161bcb5059b27898574473cdd6278dea5); /* line */ 
         c_0xe11a666b(0xa2ef86787b262db52fe1d15fc7c7c1fe11e73cee9b10f21c515130d6ae69a308); /* statement */ 
emit TokenTypesAvailable(tokenTypes);

    }

    function getDeployedTokens() public {c_0xe11a666b(0x475b44aaa257dcc657514fd775faa5b207c649ca69e6609c209df5018af9bb4c); /* function */ 

c_0xe11a666b(0x7cc5cb8d360c41eafd562c576d97045c48424318aedce034fa7c0992bc6bf7dd); /* line */ 
        c_0xe11a666b(0xc74a6047fbf4bad6964d366a8b9c08ff1ab81227a2266c158e85822c21d284e7); /* statement */ 
emit TotalTokensDeployed(deployedTokens, deployedTokens.length);
    }

    
}