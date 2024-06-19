// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract DataStorage {
    uint256[] public x = [1, 2, 3];

    function fStorage() public {
        //声明一个storage的变量xStorage，指向x。修改xStorage也会影响x
        uint256[] storage xStorage = x;
        xStorage[0] = 100;
    }

    function fMemory() public view {
        // 声明一个Memory的变量xMemory，复制x。修改xMemory不会影响x
        uint256[] memory xMemory = x;
        xMemory[0] = 100;
        xMemory[1] = 200;
        uint256[] memory xMemory2 = x;
        xMemory2[0] = 300;
    }

    function fCalldata(uint256[] calldata _x)
        public
        pure
        returns (uint256[] calldata)
    {
        // 参数为calldata数组，不能被修改
        // _x[0] = 0; // 这样修改会报错
        return (_x);
    }
}

contract Variables {
    uint256 public x = 1;
    uint256 public y;
    string public z;

    function foo() external {
        x = 5;
        y = 2;
        z = "0xAA";
    }

    function bar() external pure returns (uint256) {
        uint256 xx = 1;
        uint256 yy = 3;
        uint256 zz = xx + yy;
        return (zz);
    }

    function global()
        external
        view
        returns (
            address,
            uint256,
            bytes memory
        )
    {
        address sender = msg.sender;
        uint256 blockNum = block.number;
        bytes memory data = msg.data;

        return (sender, blockNum, data);
    }

    function weiUnit() external pure returns (uint256) {
        assert(1 wei == 1e0);
        assert(1 wei == 1);
        return 1 wei;
    }

    function gweiUnit() external pure returns (uint256) {
        assert(1 gwei == 1e9);
        assert(1 gwei == 1000000000);
        return 1 gwei;
    }

    function etherUnit() external pure returns (uint256) {
        assert(1 ether == 1e18);
        assert(1 ether == 1000000000000000000);
        return 1 ether;
    }

    function secondsUnit() external pure returns (uint256) {
        assert(1 seconds == 1);
        return 1 seconds;
    }

    function minutesUnit() external pure returns (uint256) {
        assert(1 minutes == 60);
        assert(1 minutes == 60 seconds);
        return 1 minutes;
    }

    function hoursUnit() external pure returns (uint256) {
        assert(1 hours == 3600);
        assert(1 hours == 60 minutes);
        return 1 hours;
    }

    function daysUnit() external pure returns (uint256) {
        assert(1 days == 86400);
        assert(1 days == 24 hours);
        return 1 days;
    }

    function weeksUnit() external pure returns (uint256) {
        assert(1 weeks == 604800);
        assert(1 weeks == 7 days);
        return 1 weeks;
    }
}
