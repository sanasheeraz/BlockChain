pragma solidity ^0.6.0;
import "./IERC20.sol";

contract PIAICBCCToken is IERC20{
    //mapping to hold balances against EOA accounts
    mapping(address => uint256) private _balances;
    //mapping to hold approved allowances of token to certain address
    //      owner           _spender    allowance
    mapping(address=>mapping(address=>uint256))private _allowances;
    //the amount of tokens in existence
    uint256 private _totalSupply;
    
    //owner
    address public owner;
    string public name;
    string public symbol;
    uint8 public decimals;
    
    constructor()  public{
        name="PIAIC-BCC Batch 1 Token";
        symbol="BCC1";
        decimals=18;
        owner=msg.sender;
        
        //1 million tokens to be generated
        _totalSupply=1000000*10**uint256(decimals);
        //transfer total Supply to owner
        _balances[owner]=_totalSupply;
        //fire an event on transfer of tokens
        emit Transfer(address(this),owner,_totalSupply);
    }
    function transfer(address recipient, uint256 amount)public virtual override returns (bool success){
        
    }
   
   function transferFrom(address sender, address recipient, uint256 amount)public virtual override returns(bool){
       address spender=msg.sender;
       uint256 _allowance =_allowances[sender][spender];
       require(_allowance > amount,"BCC1: transfer amount exceeds allowance");
       
       _allowance=_allowance-amount;
       _balances[sender]=_balances[sender]-amount;
       _balances[recipient]=_balances[recipient]+amount;
       emit Transfer(sender,recipient,amount);
       _allowances[sender][spender]=_allowance;
       
   }
   
   
    function totalSupply() external returns (uint256){
        
    }
   function balanceOf(address _owner) external override returns (uint balance){
       
   }
   function approve(address _spender, uint256 amount)public virtual override returns (bool){
       address _owner;
   }
   function allowance(address _owner, address _spender) external returns
      (uint remaining){}
}