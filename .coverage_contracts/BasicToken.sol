// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BasicToken is ERC20 {
function c_0x3da25147(bytes32 c__0x3da25147) public pure {}



    constructor (string memory tokenName, string memory tokenSymbol) public ERC20(tokenName, tokenSymbol){c_0x3da25147(0x47e41eefae35535f759dc543d5bd31a3dcd2947d9432b93eed07020b2d346f39); /* function */ 

c_0x3da25147(0x80e74466ad6b6f3e5adaca7f12c08dd80a3f3735eec3f876dd54ba664c07bf79); /* line */ 
        c_0x3da25147(0x98f5bd956a3b71a2981906403ef7d8763d4f6c0fc92565ab5a986526b2bdac9f); /* statement */ 
informDeployed(tokenName, tokenSymbol, 'ERC20 token created and deployed');
    }

    event TokenDeployed(address myAddress, string name, string symbol,string tokenType);

    function informDeployed(string memory name, string memory symbol, string memory tokenType) public{c_0x3da25147(0x8c212e23661f935ee97baa4715177a55c20594ed3401b51158f6f65d94789d09); /* function */ 


c_0x3da25147(0xb00d3beb9488529460610c82c1ba3b32b7e8b24e68acf4f5e320bc84f196ab52); /* line */ 
        c_0x3da25147(0xaa384e6f342c7919b4e710287a3312bc5dc4ca3ea95677aea4601e017bc48518); /* statement */ 
emit TokenDeployed(address(this), name, symbol, tokenType);
    }

    
}
