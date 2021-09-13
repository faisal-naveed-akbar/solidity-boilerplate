
const BasicToken = artifacts.require('BasicToken');
const NonFungibleToken = artifacts.require('NonFungibleToken');
const ERC20Factory = artifacts.require('ERC20Factory');
const TokenDeployer = artifacts.require('TokenDeployer');



module.exports = function (deployer) {

    deployer.deploy(BasicToken, "MyToken","MT");
    deployer.deploy(NonFungibleToken, "MyToken","MT");
    deployer.deploy(ERC20Factory);
    deployer.deploy(TokenDeployer);
    
};
