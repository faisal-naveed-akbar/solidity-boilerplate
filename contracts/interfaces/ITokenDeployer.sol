// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.4.22 <0.8.0;

import '../BasicToken.sol';
import '../NonFungibleToken.sol';
//import './Pausafe.sol';

interface ITokenDeployer {

    function deploy(
        address factory,
        string memory tokenName,
        string memory tokenSymbol,
        string memory tokenType
    ) external returns (address deployedToken);
}