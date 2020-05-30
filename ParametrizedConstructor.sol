pragma solidity ^0.5.0;
contract Student{
    uint public age;
    string name;
    
    event log(string);
    constructor(string memory _name)public{
        name=_name;
        emit log("In Parametrized constructor Name is set !");
    }
    
}

contract Client{
    function createObj(string memory _name)public {
        Student st=new Student(_name);
    }
}