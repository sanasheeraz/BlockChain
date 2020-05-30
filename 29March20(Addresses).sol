pragma solidity ^0.6.0;

contract AddressContract{
    //balance, No send() and transfer();
    //address owner;
    
    //EOA
    address payable owner;
    //balance, send () transfer()
    address payable myAddr=payable(address(this));
    
    constructor() public{
        owner=msg.sender; //jo bhe deploy krega wo owner bn jae ga .
    }
    
    function getBalance() public view returns(uint aBalance, uint cBalance){
        oBalance=owner.balance;
        cBalance=myAddr.balance;
    }
    
    function pay() public payable returns(bool success){
        success=owner.send(msg.value);
    }
}