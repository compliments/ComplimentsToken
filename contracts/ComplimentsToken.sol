pragma solidity ^0.4.2;

contract Compliments {
  string public name = "Compliments";
  string public symbol = "CPS";
  string public standard = "Compliments v1.0";
  uint256 public totalSupply;

  event Transfer(
    address indexed _from,
    address indexed _to,
    uint256 _value
  );

  mapping(address => uint256) public balanceOf;

  function Compliments (uint256 _initialSupply) public {

    balanceOf[msg.sender] = _initialSupply;
    totalSupply = _initialSupply; // 54 million

  }

  //Tranfer function
  function transfer(address _to, uint256 _value) public returns (bool success) {
    //Exception handling
    require(balanceOf[msg.sender] >= _value);
    // Transfer the balance
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    //Transfer event

    Transfer(msg.sender, _to, _value);
    // Boolean return
    return true; 
  }
}
