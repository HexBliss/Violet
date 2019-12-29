pragma solidity ^0.4.2;

contract VioletToken {
	// Constructor allows verification through blockchain transaction of totalSupply
	uint256 public totalSupply;

	function VioletToken () public {
		totalSupply = 1000000;
	}
}