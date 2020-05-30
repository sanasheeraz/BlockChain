pragma solidity ^0.6.0;
contract ModifierIdentifier{
    event logString(string);
    modifier checkValue(uint value){
        require(value>2,"Insufficient value");
        _;
        emit logString("checkValue executed");
    }
    // function doSomething(uint value)public checkValue(value)pure returns(uint number){
    //     number=value*value;
    // }
    function doSomething(uint value)public checkValue(value) returns(uint number){
        number=value*value;
    }
}