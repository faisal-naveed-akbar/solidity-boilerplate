// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.4.22 <0.8.0;

import './MockBasicToken.sol';
import './MockNFT.sol';
import '../interfaces/ITokenDeployer.sol';

contract MockTokenDeployer is ITokenDeployer {
function c_0xa64a5c84(bytes32 c__0xa64a5c84) public pure {}


    function deploy(
        address factory,
        string memory tokenName,
        string memory tokenSymbol,
        string memory tokenType
    ) public override returns (address deployedToken) {c_0xa64a5c84(0x76e483d336de6283ed1984d55eb3f8eacdb26354063eaa336854f709a940b77a); /* function */ 


c_0xa64a5c84(0xe608c9df86bb9df6ea4fafe64385d54fe1b9c935df535f303c12bc8a360bd484); /* line */ 
        c_0xa64a5c84(0x7449fb64ab4282c8855f5241089268cce3354ebaea79f98d444bd991e553c115); /* statement */ 
address a = 0x0000000000000000000000000000000000000000;

c_0xa64a5c84(0xc15e8e4f8923eba9dc3a09fccb75f7fa4ccd241e6441585bb66bbcce54266031); /* line */ 
        c_0xa64a5c84(0xf32cf93922fa184039b4587d9e6f748c5409884ba00d6fe17aa1b7dd40295b27); /* statement */ 
if(keccak256(abi.encodePacked((tokenType))) == keccak256(abi.encodePacked(('Basic')))){c_0xa64a5c84(0x622daa8cdb05a0ae4b7a3785a25736ad8011f3acc4687abce781b5322451913b); /* branch */ 

c_0xa64a5c84(0x65555dad5c0226a84fe63b15417569b2f19d92047b13a2d7c750b769894c3353); /* line */ 
            c_0xa64a5c84(0x13be344dc88cdcab203f899d83c75887a771fd361830eae003db5d74a9cb6f32); /* statement */ 
a = address(new MockBasicToken(tokenName, tokenSymbol));
        }
        
        else {c_0xa64a5c84(0xcb22eef8084bdb9e31c298959a6684592e978299da604db54642c2d4578889ff); /* statement */ 
c_0xa64a5c84(0xac67ab24d561e283f001f30336f9289dd0ae59339d824407efdca3553e411e82); /* branch */ 
if(keccak256(abi.encodePacked((tokenType))) == keccak256(abi.encodePacked(('NFT')))){c_0xa64a5c84(0xfb70168a0fcab9f74558a82675153a7e9827520703b91bcc4a6ef770538316c3); /* branch */ 

c_0xa64a5c84(0x26e6a612e271f58b5eb02cb682fe3d70ddff7c2c18c7509e35c018f6d3dbea6f); /* line */ 
            c_0xa64a5c84(0x54de6292720ad292d64128068180d1fa5b2c24e239ca94f32087cf962b98fb82); /* statement */ 
a = address(new MockNFT(tokenName, tokenSymbol));
        }else { c_0xa64a5c84(0xffa37faf0aab2edc1604f6c6302d5acc57f8a5c7f9781f051566f912a11306f8); /* branch */ 
}}

c_0xa64a5c84(0x8f6a99e57557e3e550583a14947724e177a96870bcbbf10dbb3a202a9dd66b99); /* line */ 
        c_0xa64a5c84(0x663d52737247fb7ad41b4c69ff92373a1cee13cd7cf4bedd1c7de0e55a2e710f); /* statement */ 
return a;
            
    }
}