pragma solidity ^0.6.0;

contract SimpleContract{
    
    function getAge(uint age) public pure returns(string memory){
        require(age > 2,"Under Age not allowed");
        if(age>150){
            revert("overflow value are not allowed");
        }
        assert(age>=2 && age<=105);
        return "Success";
    }
}
contract Caller{
    SimpleContract public simple=new SimpleContract();
    function doSomething(uint value)public view returns(string memory s, bool success){
        try simple.getAge(value) returns(string memory sRtn)
        {
            //On Success .. No error
            s=sRtn;
            success=true;
            
        }catch Error(string memory sError){
            s=sError;
            success=false;
        }catch (bytes memory Error){
            //return("Assertion failed");
            s="Assertion failed";
            success=false;
        }
    }
}