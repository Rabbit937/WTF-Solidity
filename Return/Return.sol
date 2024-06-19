// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Return {
    // 返回多个变量
    function returnMultiple()
        public
        pure
        returns (uint256, bool, uint256[3] memory)
    {
        return (1, true, [uint256(1), 2, 5]);
    }

    // 命名式返回
    function returnNamed()
        public
        pure
        returns (uint256 _number, bool _bool, uint256[3] memory _array)
    {
        _number = 2;
        _bool = false;
        _array = [uint256(1), 2, 5];
    }

    // 命名式返回，依然支持return
    function returnNamed2()
        public
        pure
        returns (uint256 _number, bool _bool, uint256[3] memory _array)
    {
        return (1, true, [uint256(1), 2, 5]);
    }

    // 读取返回值，解构式赋值
    function readReturn() public pure {
        uint256 _number;
        bool _bool;
        bool _bool2;
        uint256[3] memory _array;

        (_number, _bool, _array) = returnNamed();

        (, _bool2, ) = returnNamed();
    }
}
