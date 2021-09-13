const assert = require("assert");
require("mocha");
var chai = require('chai')
const ERC20Factory = artifacts.require('ERC20Factory');
const web3 = require('web3')
const { jestSnapshotPlugin } = require("mocha-chai-jest-snapshot");
chai.use(jestSnapshotPlugin()); 
const { expect } = require("chai");

contract("ERC20Factory", accounts => {

    describe("Deployment", function () {
        
        it("Should deploy and emit the event", async () => {
            const instance = await ERC20Factory.deployed();
        });
        
    });

    describe("Deploys the correct token", async function () {

        const nullAddress = "0x0000000000000000000000000000000000000000";

        it("Should deploy basic token if the provided type is basic", async () => {

            const ERC20FactoryInstance = await ERC20Factory.deployed();

            const transaction = await ERC20FactoryInstance.CreateToken(
                'MyToken', 
                'MT', 
                'Basic'
            );

            const deployedTokenAddress = web3.utils.toChecksumAddress(transaction.logs[0].args['0'])

            assert.notEqual(
                deployedTokenAddress, 
                web3.utils.toChecksumAddress(nullAddress)
            );

            //expect({ deployedTokenAddress}).toMatchSnapshot();

        });

        it("Should not deploy any token if the provided type is not one of the available types", async () => {

            const ERC20FactoryInstance = await ERC20Factory.deployed();

            const transaction = await ERC20FactoryInstance.CreateToken(
                'MyToken', 
                'MT', 
                'ANY' //Token type that is not available
            );
            
            assert.equal(
                web3.utils.isAddress(transaction.logs[0].args['0']),
                false
            );

        });

    });

    describe("emitStringArray", function () {

        it("should emit types of tokens (in string) available in the factory", async () => {

            const ERC20FactoryInstance = await ERC20Factory.deployed();
            const tx = await ERC20FactoryInstance.getAvailableTokenTypes();
            assert.ok(tx.logs.length = 1);
            assert.strictEqual(tx.logs[0].args['0'][0], "Basic");
            assert.strictEqual(tx.logs[0].args['0'][1], "NFT");

        });

        it("should emit addresses of tokens deployed so far, and the total number of tokens", async () => {

            const ERC20FactoryInstance = await ERC20Factory.deployed();
            const tx = await ERC20FactoryInstance.getDeployedTokens();
            assert.ok(tx.logs.length = 2);

        });

    });

});