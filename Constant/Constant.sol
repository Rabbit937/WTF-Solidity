// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Constant {
    // constant变量必须在声明的时候初始化，之后不能改变
    uint256 public constant CONSTANT_NUM = 10;
    string public constant CONSTANT_STRING = "0xAA";
    bytes public constant CONSTANT_BYTES = "WTF";
    address public constant CONSTANT_ADDRESS =
        0x0000000000000000000000000000000000000000;

    // immuable变量可以在constructor里初始化，之后不能改变
    uint256 public immutable IMMUTABLE_NUM = 9999999999;
    address public immutable IMMUTABLE_ADDRESS;
    uint256 public immutable IMMUTABLE_BLOCK;
    uint256 public immutable IMMUTABLE_TEST;

    constructor() {
        IMMUTABLE_ADDRESS = address(this);
        IMMUTABLE_NUM = 1118;
        IMMUTABLE_TEST = test();
    }

    function test() public pure returns (uint256) {
        uint256 what = 9;
        return (what);
    }
}
