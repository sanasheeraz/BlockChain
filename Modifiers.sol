pragma solidity ^0.5.0;
//import "github.com/ethereum/dapp-bin/library/stringUtils.sol";

import './stringUtils.sol';

contract Modifier{
    modifier onlyBlockchain(course _course){
        if(_course == course.blockchain){
            _;
        }
    }
    
    modifier onlyChild(){
        if(age<20){
            _;
        }
    }
    modifier onlyString(string memory _a){
        if(StringUtils.equal(_a,"a")){
            _;
        }
    }
    
    enum course{blockchain , A1, HTML}
    string a;
    uint age=20;
    struct abc{
        uint a;
        string g;
    }
    mapping(uint=>abc) public a1;
    function doSomething(string memory _greeting,uint _age,course _course) public 
        onlyBlockchain(_course) 
        onlyString(_greeting) 
        onlyChild()
        {
            a="Bye";
            age=12;
            a1[_age]=abc(age,a);
        }
}