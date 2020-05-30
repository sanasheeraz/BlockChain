pragma solidity ^0.5.0;

contract SimpleContract{
    uint public callCounter=0;
    event log(uint);
    function doSomething() public{
        callCounter++;
    }
    
    //fallback method 0.5;
    function()payable external{
        emit log(gasleft());
        doSomething();
        emit log(gasleft());
    }
   
}
contract CallContract{
    function pay(address payable adr)payable public returns(uint){
        (adr).transfer(msg.value);
        return adr.balance;
    }
}