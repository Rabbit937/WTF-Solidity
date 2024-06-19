// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Owner {
    address public owner; // 定义owner变量

    constructor() {
        owner = msg.sender; // 在部署合约的时候，将owner设置为部署者的地址
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner;
    }
}
