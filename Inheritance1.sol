pragma solidity ^0.5.0;
contract Calculator{
    uint public a;
    uint public b;
    function add() public returns(uint){
        return a+b;
    }
}
contract ChildCalculator is Calculator{
    function sub() public returns (uint){
        return a-b;
    }
}
contract Client{
    function action() public returns (uint,uint){
        ChildCalculator calc=new ChildCalculator();
        calc.a();
        calc.b();
        return(calc.add(),calc.sub());
    }
}