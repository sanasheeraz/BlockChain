pragma solidity ^0.5.0;
contract AbstractContract{
    function setValue (uint _value) public;
    function getValue () public view returns(uint);
    function add (uint _otherVal) public view returns(uint){
        return 10;
    }
    
}
contract Number is AbstractContract{
    uint private number;
    function setValue(uint _value)public{
        number=_value;
    }
    function getValue() public view returns (uint){
        return number;
    }
    function add(uint _otherVal)public view returns(uint){
        return number+_otherVal;
    }
}
contract Client{
    function action()public returns(uint){
        //Number num=new Number();
        AbstractContract num=new Number();
        num.setValue(100);
        return num.add(50);
    }
}