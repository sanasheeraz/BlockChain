pragma solidity ^0.5.0;

contract Student{
    uint public age;
    string name;
    event log(string);
    constructor () public {
        emit log("In default constructor");
    }
    
}
contract client{
    
    function createObj()public{
        Student st=new Student();
        
    }
}