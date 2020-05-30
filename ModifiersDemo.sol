pragma solidity ^0.5.0;

contract Modifier{
    enum regType{
        onsite, //0
        online  //1
    }
    struct Student{
        uint rollNo;
        string name;
        regType rType;
    }
    
    modifier onlyOnSite(regType _type){
        if(_type==regType.onsite){
            _;  //means continue goto the function and execute
        }
    }
    
    mapping(uint=>Student) public students;
    
    function addStudent(uint _rollNo,string memory _name,regType _type) public onlyOnSite(_type) {
        students[_rollNo]=Student(_rollNo,_name,_type);
    }
}