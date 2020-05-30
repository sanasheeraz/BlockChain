pragma solidity ^0.5.0;
interface ICalculator{
    function add(uint a, uint b)external returns(uint);
    function sub(uint a, uint b)external returns(uint);
    function mul(uint a, uint b)external returns(uint);
    function div(uint a, uint b)external returns(uint);
    
}
contract SimpleCalculator is ICalculator{
    function add(uint a,uint b)public returns(uint){
        return a+b;
    }
    function sub(uint a,uint b)public returns(uint){
        return a-b;
    }
    function mul(uint a,uint b)public returns(uint){
        return a*b;
    }
    function div(uint a,uint b)public returns(uint){
        return a/b;
    }
    function pow(uint a,uint b)public returns(uint){
        return a**b;
    }
    
}
contract Client{
    function action()public returns(uint,uint,uint,uint){
        ICalculator sc=new SimpleCalculator();
        //sc.pow(2,3);
        return (sc.add(2,4),sc.sub(10,5),sc.mul(2,3),sc.div(10,5));
        //isse pow ka function call nhe hoskta qk wo ICalculator m nhe h
    }
}
contract Client1{
    function action()public returns(uint,uint,uint,uint,uint){
        SimpleCalculator sc=new SimpleCalculator();
        return (sc.add(2,4),sc.sub(10,5),sc.mul(2,3),sc.div(10,5),sc.pow(4,2));
    }
}