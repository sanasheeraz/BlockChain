pragma solidity ^0.5.0;
contract Calculator{
    function add(uint8 a,uint8 b)public returns(uint){
        return a+b;
    }
    function add(int8 a,int8 b)public returns(int){
        return a+b;
    }
    function add(uint a,uint b,uint c)public returns(uint){
        return a+b+c;
    }
}
contract Client{
    function action()public returns (uint){
        Calculator calc=new Calculator();
        calc.add(uint8(8),uint8(4));
        calc.add(int8(60),int8(50));
        calc.add(uint(60),uint(50),uint(77));
    }
}