pragma solidity ^0.5.0;
contract Calculator{
    uint public a;
    uint public b;
    
    function add(uint _a,uint _b)public view returns(uint){
        return _a + _b;
    }
    function sub(uint _a,uint _b)public view returns(uint){
        return _a - _b;
    }
   function mul(uint _a,uint _b)public view returns(uint){
        return _a * _b;
    }
    function div(uint _a,uint _b)public view returns(uint){
        return _a / _b;
    }
}
contract ScientificCalculator is Calculator{

    function power(uint _a,uint _b)public view returns(uint){
        return _a ** _b;
    }
    function sqrt(uint _a,uint _b)public view returns(uint){
        return _a % _b;
    }
}
contract MeasurementCalculator is Calculator{
    function covertKgtoGm(uint _a)public view returns(uint){
        return _a*1000;
    }
    function convertMeasurement(uint _a)public view returns(uint){
        return _a/1000;
    }
}

contract Client{
    uint public num1;
    uint public num2;
    function setNum1(uint _num1)public {
        num1=_num1;
    }
    function setNum2(uint _num2)public {
        num2=_num2;
    }
    ScientificCalculator sc=new ScientificCalculator();
    
    function display(uint op)public view returns(uint){
        uint ans;
        if(op==1)
        {
            ans=sc.add(num1,num2);
        }else if(op==2)
        {
            ans=sc.sub(num1,num2);
        }else if(op==3)
        {
            ans=sc.mul(num1,num2);
        }else if(op==4)
        {
            ans=sc.div(num1,num2);
        }else if(op==5)
        {
            ans=sc.power(num1,num2);
        }else if(op==6)
        {
            ans=sc.sqrt(num1,num2);
        }
        return ans;
    }
    //MeasurementCalculator m=new MeasurementCalculator();
    
}