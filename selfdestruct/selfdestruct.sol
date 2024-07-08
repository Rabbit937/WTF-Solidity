// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract DeleteContract {
    uint public value = 10;

    constructor() payable {}

    receive() external payable {}

    function deleteContract() public {
        selfdestruct(payable(msg.sender));
    }

    function getBalance() public view returns (uint balance) {
        balance = address(this).balance;
    }
}
