// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ArrayTypes {
    // 固定长度 Array
    uint256[8] array1;
    bytes1[5] array2;
    address[100] array3;

    // 可变长度
    uint256[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    // 初始化可变长度Array
    uint256[] array8 = new uint256[](5);
    bytes array9 = new bytes(9);

    // 给可变长度数组赋值
    function initArray() external pure returns (uint256[] memory) {
        uint256[] memory x = new uint256[](3);
        x[0] = 1;
        x[1] = 3;
        x[2] = 4;
        return (x);
    }

    function arrayPush() public returns (uint[] memory) {
        uint[2] memory a = [uint(1), 2];
        array4 = a;
        array4.push(3);
        return array4;
    }
}

pragma solidity ^0.8.21;

contract StructType {
    // 结构体
    struct Student {
        uint256 id;
        uint256 score;
    }

    Student student;

    // 给结构体赋值
    function initStudent1() external {
        Student storage _student = student;
        _student.id = 11;
        _student.score = 100;
    }

    function initStudent2() external {
        student.id = 1;
        student.score = 80;
    }

    function initStudent3() external {
        student = Student(3, 90);
    }

    function initStudent4() external {
        student = Student({id: 4, score: 60});
    }
}

pragma solidity ^0.8.21;

contract EnumType {
    enum ActionSet {
        Buy,
        Hold,
        Sell
    }

    ActionSet action = ActionSet.Buy;

    function enumToUint() external view returns (uint) {
        return uint(action);
    }
}
