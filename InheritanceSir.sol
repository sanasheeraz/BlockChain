pragma solidity ^0.5.0;

contract Calculator{
    function add(uint a,uint b) public returns(uint){
        return a+b;
    }
    
}

//single level inheritance
contract SubCalculator is Calculator {
    function sub(uint a,uint b) public returns(uint){
        return a - b;
    }
    
}
//mutli level inheritance
contract MulCalculator is SubCalculator{
    function sub(uint a, uint b) public returns(uint){
        return a*b;
    }
}
//multple inheritance
contract DivCalculator is Calculator,SubCalculator,MulCalculator{
    function div(uint a, uint b) public returns(uint){
        return a/b;
    }
    
}

contract Client{
    function action() public returns(uint){
        DivCalculator calc = new DivCalculator();
        return calc.sub(40,30);
    }
}