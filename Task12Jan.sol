pragma solidity ^0.5.0;
interface ICar{
    
    function accelerate(uint _factor)external returns(uint);
    function stop()external returns(uint);
}
contract Mehran is ICar{
    uint public speed=30;
    function accelerate(uint _factor)public returns(uint){
        return speed*=_factor;
    }
    function stop()public returns(uint){
        return speed=0;
    }
}
contract Alto is ICar{
    uint public speed=40;
    function accelerate(uint _factor)public returns(uint){
        return speed*=_factor;
    }
    function stop()public returns(uint){
        return speed=0;
    }
}
contract Client{
    function action()public returns(uint)
    {
        Mehran meh=new Mehran();
        return meh.accelerate(4);
    }
    function action1()public returns(uint)
    {
        Mehran meh=new Mehran();
        return meh.stop();
    }
}
contract ClientAlto{
    function action()public returns(uint)
    {
        Alto al=new Alto();
        return al.accelerate(4);
    }
    function action1()public returns(uint)
    {
        Alto al=new Alto();
        return al.stop();
    }
}