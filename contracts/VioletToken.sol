pragma solidity ^0.4.2;

contract Violet {
	// Name
	string public name = "Violet";
	// Symbol
	string public symbol = "VLT";
	// Standard
	string public standard = "Violet Token v1.0";
	
	uint256 public totalSupply;
	
	event Transfer(
		address indexed _from,
		address indexed _to,
		uint256 _value
	);

	// Approve
	event Approval(
		address indexed _owner,
		address indexed _spender,
		uint256 _value
	);
	// balanceOf
	mapping(address => uint256) public balanceOf;
	// Allowance
	mapping(address => mapping(address => uint256)) public allowance;
	// Constructor
	function Violet (uint256 _initialSupply) public {
		balanceOf[msg.sender] = _initialSupply;
		totalSupply = _initialSupply;
		// Allocate the initial supply
	}
	// Transfer
	function transfer(address _to, uint256 _value) public returns (bool success) {
		// Exception if account doesn't have enough
		require(balanceOf[msg.sender] >= _value);
		// Transfer the balance
		balanceOf[msg.sender] -= _value;
		balanceOf[_to] += _value;
		// Transfer Event
		Transfer(msg.sender, _to, _value);
		// Return a boolean
		return true;
	}

	// Delegated Transfer
	// approve
	function approve(address _spender, uint256 _value) public returns (bool success) {
		// Allowance
		allowance[msg.sender][_spender] = _value;
		// Approve Event
		Approval(msg.sender, _spender, _value);
		return true;
	}
	// transferFrom
	function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
		// Require _from has enough tokens
		require(_value <= balanceOf[_from]);
		// Require allowance is big enough
		require(_value <= allowance[_from][msg.sender]);
		// Change balance
		balanceOf[_from] -= _value;
		balanceOf[_to] += _value;
		// Update allowance
		allowance[_from][msg.sender] -= _value;
		// Transfer Event
		Transfer(_from, _to, _value);
		// Return a boolean
		return true;
	}
}