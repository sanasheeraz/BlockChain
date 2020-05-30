pragma solidity ^0.5.0;

contract Modifier{
    enum regType{
        onsite,online
    }   
    enum qualification{
        BS,
        BCom,
        BA
    }
    struct student{
        uint rollno;
        string name;
        qualification quali;
        regType rtype;
    }
    modifier onlyonsite(regType _type){
        if (_type==regType.onsite){
            _;
        }
    }
    modifier onlyBS(qualification _quali){
        if (_quali==qualification.BS){
            _;
        }
    }
    mapping (uint=>student) public students;
    function registerStudent (uint _rollno,string memory _name,qualification _quali,regType _type) public onlyonsite (_type) onlyBS(_quali)
    {
        
        students [ _rollno]=student (_rollno, _name,_quali,_type);
        
     
    }
}