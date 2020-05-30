pragma solidity ^0.5.0;
contract Calculator{
    uint public a;
    uint public b;
    function sub(uint a,  uint b)public returns(uint){
        return a+b;
    }
}
contract SubCalculator is Calculator{
    function sub(uint a,  uint b)public returns(uint){
        return a-b;
    }
}
contract MulCalculator is Calculator{
    function sub(uint a,  uint b)public returns(uint){
        return a*b;
    }
}
//Diamond problem solving using linearization means last inherited class's method used
contract DivCalculator is Calculator,SubCalculator,MulCalculator{
}
contract Client{
    function action() public returns(uint){
        DivCalculator calc = new DivCalculator();
        return calc.sub(40,30);
    }
}