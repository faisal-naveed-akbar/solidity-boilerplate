// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NonFungibleToken is ERC721, Ownable {
function c_0xad825bce(bytes32 c__0xad825bce) public pure {}


    constructor (string memory tokenName, string memory tokenSymbol) public ERC721(tokenName, tokenSymbol){c_0xad825bce(0x0b539f053524ea98f3921bcecf2c1171fce23ba29acfe1fa39bf145fce6a2777); /* function */ 

c_0xad825bce(0x324961cdc29c0b75e15272499b5fe0e4e490a865d290dc07de2e37bbab688a2b); /* line */ 
        c_0xad825bce(0x07ac65568f073191708f6db621eb9892b3dc32d2ea2b91d0d1d00b819a7ef9e6); /* statement */ 
informDeployed(tokenName, tokenSymbol, 'ERC20 token created and deployed');
c_0xad825bce(0x8ab0f03de584c1bb9d78cda80a65798bfa9deb2dcc8b3e9d82ae9d206adbc2de); /* line */ 
        c_0xad825bce(0x16315694e84f02bcaf82e319b29dc4b93b3c1741df76954b65d006d0eee392bf); /* statement */ 
super._mint(msg.sender, totalSupply().add(1));
    }

    event TokenDeployed(string name, string symbol,string tokenType);

    function informDeployed(string memory name, string memory symbol, string memory tokenType) public{c_0xad825bce(0x511a61dda44b0ee02e52517a81435af0f945fd51728869895d357172de21c813); /* function */ 


c_0xad825bce(0xd2fd0c05fbd025e50f902649ea49b60a5783f75f9724e0d468cf51ac6ffe66b1); /* line */ 
        c_0xad825bce(0x5761116669f214cd604b101003c164f649258886c7590ec0f9e02422197b7b0d); /* statement */ 
emit TokenDeployed(name, symbol, tokenType);
    }

    function mint(address to) public onlyOwner {c_0xad825bce(0x5ad3cb0f8ce5da7363cc0b59b2eda68b775484fdbff6eba22e2927098c2ef5aa); /* function */ 

c_0xad825bce(0x19df706a686e171c2ca552a2b1bc78f0dd12ab992adb469704697cb061879704); /* line */ 
        c_0xad825bce(0x02959acb06e851616b960fde31fb036812cc9c822768c61329f70e58de330ce1); /* statement */ 
super._mint(to, totalSupply().add(1));
    }
    
}