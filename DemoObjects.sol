pragma solidity ^0.5.0;
contract Student{
    uint public age;
    string name;
    
    function getName() public view returns (string memory){
        return name;
    }
    
    function setName(string memory _name) public{ 
        name=_name;
    }
}

contract client{
    // function createObj() public returns(string memory){
    //     //Student st=new Student();
    //      address ad=0xe3632B9aB0571d2601e804DfDDc65EB51AB19310;
    //      Student st=Student(ad);
    //      return st.getName();
    //     //return address(st);
    // }
    
    function createObj(string memory _name)public returns(string memory,address){
        Student st=new Student();
        st.setName(_name);
        address aa=address(st);
        return (st.getName(),aa);
    }
    
    //returns the name from the deployed contract which address we pass on calling
    function getObj(address ad)public returns(string memory,address){
        Student st=Student(ad);
        address aa=address(st);
        return (st.getName(),aa);
    }
}