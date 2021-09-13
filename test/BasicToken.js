
const assert = require("assert");
//const {describe, it} = require("mocha");
const chai = require('chai')
require('mocha');
const { jestSnapshotPlugin } = require("mocha-chai-jest-snapshot");
chai.use(jestSnapshotPlugin()); 
const { expect } = require("chai");
const BasicToken = artifacts.require("BasicToken");

contract("BasicToken", accounts => {
    
    describe("Deployment", function () {
        
        it("Should deploy and emit the event", async () => {
            const instance = await BasicToken.deployed();
            await assert.doesNotReject(() => instance.informDeployed('MyToken', 'MT', 'Basic'));
        });

    
    });

});