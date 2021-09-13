// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.4.22 <0.8.0;

import './BasicToken.sol';
import './NonFungibleToken.sol';
//import './Pausafe.sol';

contract TokenDeployer {
function c_0x0a5a2010(bytes32 c__0x0a5a2010) public pure {}


    function deploy(
        address factory,
        string memory tokenName,
        string memory tokenSymbol,
        string memory tokenType
    ) public returns (address deployedToken) {c_0x0a5a2010(0x420650ec8dcb572a464910a6f6009cda3c1b032f559d9bd6ea5c1763db501ae2); /* function */ 


c_0x0a5a2010(0x18c076541a98a5d98d0cd3b7796ced319f4e05cf2982e5d5b4450028f1f7a8aa); /* line */ 
        c_0x0a5a2010(0xb1e24e5d5d3c89d1dc92a8cd4d08344bcb7efd6b383d4506ffdd73766c9ad24e); /* statement */ 
address a = 0x0000000000000000000000000000000000000000;

c_0x0a5a2010(0x4af68b1ca87081c3f2bac2f5a26065dbcaad28c7dc50fcade9e3d2f8d18dfaf3); /* line */ 
        c_0x0a5a2010(0x101af73028f22399103b187bd97e4a1a1ae5dde8253dfd3dee88d2db8af0fe03); /* statement */ 
if(keccak256(abi.encodePacked((tokenType))) == keccak256(abi.encodePacked(('Basic')))){c_0x0a5a2010(0x0675d253025e085976730d497dabdfae48d9ddd4ddf7dab100565cb9d6d353dc); /* branch */ 

c_0x0a5a2010(0xa0aef26940b403580b4ccc0fd40d7fa754bdf58ee56f0a08e0879201b88f65a5); /* line */ 
            c_0x0a5a2010(0x73452379807ab03f13cbe9f5f5a86e3cdb32496f2c2d9035f8843817cff21851); /* statement */ 
a = address(new BasicToken(tokenName, tokenSymbol));
        }
        
        else {c_0x0a5a2010(0x77191307fd2a6601677f4b25a0d541419aa39a3f634d286e3040e5f1f28ab5aa); /* statement */ 
c_0x0a5a2010(0xa2b9e5aa5d0daf13309a7be1bfbf4af7a4b496288d8d12b3931cb9548938c9a6); /* branch */ 
if(keccak256(abi.encodePacked((tokenType))) == keccak256(abi.encodePacked(('NFT')))){c_0x0a5a2010(0x74b57c00f3ba4ab79b1ae516781f09876a54cce974ea2c4e25bcdba77ff08241); /* branch */ 

c_0x0a5a2010(0xf4c2cbd4c17beab4fbbd6d23a3da7b8c5ff848becb6e19668ffb8585fe37e2c9); /* line */ 
            c_0x0a5a2010(0x193b62b3bfe6e2876b80b028eac866c7f21cca6b724506000aec2de735a90b62); /* statement */ 
a = address(new NonFungibleToken(tokenName, tokenSymbol));
        }else { c_0x0a5a2010(0x3cbf9557581295d8c317159d6d9b90bdd83f53e20120092f059ec4b2f43b9b04); /* branch */ 
}}

c_0x0a5a2010(0xb12e221acfb101a77a2e5ac2470ae09b5e83694fa867abc2a5038119f87e0949); /* line */ 
        c_0x0a5a2010(0xdc73da3b80412fe2b687af51cbf5c98a918caf5879dbc757791f9908f350d215); /* statement */ 
return a;
            
    }
}