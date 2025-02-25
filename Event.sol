// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Events {
    mapping(address => uint256) public _balances;

    event Transfer(address indexed form,address indexed to,uint256 value);
    function _transfer(address from, address to, uint256 amount) external {
        _balances[from] = 10000000;
        _balances[from] -= amount;
        _balances[to] += amount;

        emit Transfer(from, to, amount);
    }
    
}