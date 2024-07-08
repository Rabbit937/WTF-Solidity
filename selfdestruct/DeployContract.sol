// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import "./selfdestruct.sol";

contract DeployContract {
    struct DemoResult {
        address addr;
        uint balance;
        uint value;
    }

    constructor() payable {}

    function getBalance() external view returns (uint balance) {
        balance = address(this).balance;
    }

    function demo() public payable returns (DemoResult memory result) {
        DeleteContract del = new DeleteContract{value: msg.value}();

        DemoResult memory res = DemoResult({
            addr: address(del),
            balance: address(del).balance,
            value: msg.value
        });

        del.deleteContract();
        return res;
    }
}
