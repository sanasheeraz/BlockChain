pragma solidity ^0.5.0;
contract Calculator{
    uint public a;
    uint public b;
    function setA(uint _a)public{
        a=_a;
    }
    function getA()public view returns(uint){
        return a;
    }
    function setB(uint _b)public{
        b=_b;
    }
    function getB()public view returns(uint){
        return b;
    }
    function add()public view returns(uint){
        return a+b;
    }
    function sub()public view returns(uint){
        return a-b;
    }
    function mul()public view returns(uint){
        return a*b;
    }
    function div()public view returns(uint){
        return a/b;
    }
}
contract ScientificCalculator is Calculator{
    
    function power()public view returns(uint){
        return a**b;
    }
    function sqrt()public view returns(uint){
        return a%b;
    }
}
contract MeasurementCalculator is Calculator{
    function covertKgtoGm()public view returns(uint){
        return a*1000;
    }
    function convertMeasurement()public view returns(uint){
        return a/1000;
    }
}

contract Client{
    
    ScientificCalculator sc=new ScientificCalculator();
    sc.add(2,4);
}