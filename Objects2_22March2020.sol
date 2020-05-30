pragma solidity ^0.6.0;
contract Human{
    uint private age;
    function doSomeWork() virtual public returns(string memory){
        return "do some Work in Human";
    }
}
contract Student is Human{
    function doSomeWork()virtual override public returns(string memory){
        return "do some Work in Student";
    }
}
contract Teacher is Human{
    function doSomeWork()virtual override public returns(string memory){
        return "do some Work in Teacher";
    }
}

contract StudentAndTeacher is Student,Teacher{
    function doSomeWork() override (Student,Teacher) public returns(string memory){
        return "do some Work in StudentAndTeacher";
    }
}
contract DemoObject{
    event logString(string);
    function doSomething() public returns(uint){
        Teacher s=new StudentAndTeacher();
        emit logString(s.doSomeWork());
    }
}