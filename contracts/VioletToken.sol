pragma solidity ^0.4.2;

contract Violet {
	// Name
	string public name = "Violet";
	// Symbol
	string public symbol = "VLT";
	// Standard
	string public standard = "Violet Token v1.0";

	uint256 public totalSupply;

	mapping(address => uint256) public balanceOf;
	
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
		// Transfer 
		// Transfer Event
		// Return a boolean
	}
}