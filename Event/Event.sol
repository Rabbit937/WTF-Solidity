// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Events {
    // 定义_balances映射变量，记录每个地址的持币数量
    mapping(address => uint256) public _balances;

    // 定义Transfer event，记录transfer交易的转账地址，接收地址和转账数量
    event Transfer(address indexed from, address indexed to, uint256 value);

    function _transfer(address from, address to, uint256 amount) external {
        _balances[from] = 10000000;

        _balances[from] -= amount;
        _balances[to] += amount;

        // 释放事件
        emit Transfer(from, to, amount);
    }
}


