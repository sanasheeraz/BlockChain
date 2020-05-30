pragma solidity ^0.5.0;

contract passByRef{
    //Rule1
    int sA=10;
    
    int[2] ar=[1,2];
    
    function setValue() pure public returns(int,int){
        //Value type .. Pass by Value
        int a =20;
        int b=a;
        b=24;
        
        return(a,b);
    }
    
    function setRef1() pure public returns(int,int){
        int[3] memory ar=[int(1),2,3];
        int[3] memory  br=ar;
        br[0]=120;
        //mapping(int=> string )storage names;
        return (ar[0],br[0]);
    }
}