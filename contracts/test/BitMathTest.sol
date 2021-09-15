pragma solidity >=0.4.22 <0.8.0;

//import "truffle/Assert.sol";  
import { BitMath } from "../libraries/BitMath.sol";

contract BitMathTest {  

     function mostSignificantBit(uint256 x) public returns (uint256 y){
        uint256 result;
        result = BitMath.mostSignificantBit(x);
        return result;
     }

     function getGasCostOfMostSignificantBit(uint256 x) public returns (uint256 y) {
        uint256 gasBefore = gasleft();
        BitMath.mostSignificantBit(x);
        return gasBefore - gasleft();
    }
    
}