pragma solidity ^0.6.0;
contract FunctionParam{
    uint r;
    event logInt(uint);
    function doSomething() public{
        //do code here
    }
    function doSomething(uint a,uint b)public pure returns(uint){
        uint result=a*b;
        return result;
    }
    function doSomething(uint a)public pure returns(uint rMul,uint rDiv){
        rMul=a*a;
        rDiv=a/2;
    }
}