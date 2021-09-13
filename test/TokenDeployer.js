const assert = require("assert");
require("mocha");
const TokenDeployer = artifacts.require("TokenDeployer");
const ERC20Factory = artifacts.require('ERC20Factory');
const web3 = require('web3')

contract("TokenDeployer", accounts => {

    describe("Deployment", function () {
        
        it("Should deploy and emit the event", async () => {
            const instance = await TokenDeployer.deployed();
        });

    });

    describe("Deploys the correct token", async function () {

        const nullAddress = "0x0000000000000000000000000000000000000000";

        it("Should deploy basic token if the provided type is basic", async () => {

            const TokenDeployerInstance = await TokenDeployer.deployed();

            const transaction = await TokenDeployerInstance.deploy(
                TokenDeployerInstance.address,
                'MyToken', 
                'MT', 
                'Basic'
            );

            const deployedTokenAddress = web3.utils.toChecksumAddress(transaction.receipt.rawLogs[0].address)

            assert.notEqual(
                deployedTokenAddress, 
                web3.utils.toChecksumAddress(nullAddress)
            );

        });

        it("Should not deploy any token if the provided type is not one of the available types", async () => {

            const TokenDeployerInstance = await TokenDeployer.deployed();

            const transaction = await TokenDeployerInstance.deploy(
                TokenDeployerInstance.address,
                'MyToken', 
                'MT', 
                'ANY'
            );
            
            assert.equal(
                transaction.receipt.rawLogs[0],
                undefined
            );

        });


    });

});