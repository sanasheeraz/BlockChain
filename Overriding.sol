pragma solidity ^0.5.0;
contract ParentContract{
    uint a;
    uint b;
    function setInt(uint _a)public{
        a=_a;
    }
    function getInt()public returns (uint){
        return 10;
    }
}
contract ChildContract is ParentContract{
    function getInt()public returns(uint){
        return a;
    }
    function getIn()public returns(uint){
        return a;
    }
}
contract Client{
    function doSomething() public returns(uint){
        //ParentContract parent =new ParentContract();
        ParentContract p=new ChildContract();
        p.setInt(100);
        return p.getInt();  // isme child ka method use hoga qk wo parent ko override krchuka h
        //return p.getIn(); // ye call nhe krskta child k method ko qk ye method parent m nhe hai (parent child ki chizon ko use nhe krskta)
    }
}