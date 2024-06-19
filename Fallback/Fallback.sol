// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Fallback {
    event receivedCalled(address Sender, uint Value);
    event fallbackCalled(address Sender, uint Value, bytes Data);

    receive() external payable {
        emit receivedCalled(msg.sender, msg.value);
    }

    fallback() external payable {
        emit fallbackCalled(msg.sender, msg.value, msg.data);
    }
}

