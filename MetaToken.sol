// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract CustomToken {
    string public tokenName = "Sunrise";
    string public tokenSymbol = "SR";
    uint public totalAmount = 0;

    // Updated mapping variable
    mapping(address => uint) public balances;

    // Custom mint function
    function customMint(address _address, uint _value) public {
        totalAmount += _value;
        balances[_address] += _value;
    }

    // Custom burn function
    function customBurn(address _address, uint _value) public {
        if(balances[_address] >= _value) {
            totalAmount -= _value;
            balances[_address] -= _value;
        } 
    }
}
