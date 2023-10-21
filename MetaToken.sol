// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "Sunrise";
    string public tokenSymbol = "SR";
    uint public totalAmount = 0;

    // mapping variable
    mapping(address => uint) public balances;

    // mint function
    function mint(address _address, uint _value) public {
        totalAmount += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn(address _address, uint _value) public {
        if(balances[_address] >= _value) {
            totalAmount -= _value;
            balances[_address] -= _value;
        } 
    }
}
