const assert = require("assert");
require("mocha");
const NonFungibleToken = artifacts.require("NonFungibleToken");

contract("NonFungibleToken", accounts => {

    describe("Deployment", function () {
        
        it("Should deploy", async () => {
            const instance = await NonFungibleToken.deployed();
            await assert.doesNotReject(() => instance.informDeployed('MyToken', 'MT', 'NFT'));
        });
    });

    describe("emitDetails", function () {

        it("should emit the deployed NFT details", async () => {

            const nftInstance = await NonFungibleToken.deployed();
            const tx = await nftInstance.informDeployed('MyToken', 'MT', 'NFT');
            assert.ok(tx.logs.length = 3);

        });

    });

    describe("Mint", function () {
        
        it("Should allow minting", async () => {
            const instance = await NonFungibleToken.deployed();
            await assert.doesNotReject(() => instance.mint("0x2119BB2A86288477FdB3FB42806577A32350ee79"));
        });
    });

});