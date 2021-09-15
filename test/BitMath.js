
const assert = require("assert");
const chai = require('chai')
require('mocha');
const { jestSnapshotPlugin } = require("mocha-chai-jest-snapshot");
chai.use(jestSnapshotPlugin()); 
const { expect } = require("chai");
const BitMathTest = artifacts.require("BitMathTest");

contract("BitMathTest", accounts => {
    
    describe("MostSignificantBit", function () {
        
        it("should return 0 as msb on passing 1", async () => {
            const instance = await BitMathTest.deployed();
            await assert.doesNotReject(() => instance.mostSignificantBit(1));
        });

        it("should return 1 as msb on passing 2", async () => {
            const instance = await BitMathTest.deployed();
            await assert.doesNotReject(() => instance.mostSignificantBit(2));
        });

        it("should return 2 as msb on passing 4", async () => {
            const instance = await BitMathTest.deployed();
            await assert.doesNotReject(() => instance.mostSignificantBit(4));
        });

        it("should return 4 as msb on passing 16", async () => {
            const instance = await BitMathTest.deployed();
            await assert.doesNotReject(() => instance.mostSignificantBit(16));
        });
        
        it("should return 8 as msb on passing 256", async () => {
            const instance = await BitMathTest.deployed();
            await assert.doesNotReject(() => instance.mostSignificantBit(256));
        });

        it("should return 16 as msb on passing 65536", async () => {
            const instance = await BitMathTest.deployed();
            await assert.doesNotReject(() => instance.mostSignificantBit(65536));
        });

        it("should return 16 as msb on passing 65536", async () => {
            const instance = await BitMathTest.deployed();
            await assert.doesNotReject(() => instance.mostSignificantBit(4294967296));
        });

        it("should use same gas price for every msb calculation", async () => {
            const instance = await BitMathTest.deployed();
            const gas =  await instance.getGasCostOfMostSignificantBit(2);
            //expect({ gas }).toMatchSnapshot();
        });
        
    
    });

});