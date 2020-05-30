pragma solidity ^0.6.0;

contract SimpleContract{
    uint public callCounter=0;
    event log(string);
    function doSomething() public{
        callCounter++;
    }
    
    receive() external payable{
        emit log("Receive function");
    }
   
   fallback() payable external{
       doSomething();
       emit log("fallback function");
   }
}
contract CallContract{
    function pay(address payable adr)payable public returns(uint){
        (adr).transfer(msg.value);
        return adr.balance;
    }
    function runDoSomething(address adr)public payable returns(uint){
        
    }
}