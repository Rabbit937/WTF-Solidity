// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract InitialValue {
    // Value Types
    bool public _bool;
    string public _string;
    int public _int;
    uint public _uint;
    address public _address;

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }

    ActionSet public _enum;

    function fi() internal {}

    function fe() external {}

    // Reference Types
    uint[8] public _staticArray;
    uint[] public _dynamicArray;
    mapping(uint => address) public _mapping;

    struct Student {
        uint256 id;
        uint256 score;
    }

    Student public student;

    bool public _bool2 = true;

    function d() external {
        delete _bool2;
    }
}
