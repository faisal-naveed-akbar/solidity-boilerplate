const assert = require("assert");
require("mocha");
const NonFungibleToken = artifacts.require("NonFungibleToken");

contract("NonFungibleToken", accounts => {

    describe("Deployment", function () {
        
        it("Should deploy and emit the event", async () => {
            const instance = await NonFungibleToken.deployed();
            await assert.doesNotReject(() => instance.informDeployed('MyToken', 'MT', 'NFT'));
        });
    });

});