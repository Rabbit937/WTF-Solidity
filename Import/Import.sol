// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "./Yeye.sol";

import {Yeye} from "./Yeye.sol";

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract Import {
    using Address for address;

    Yeye yeye = new Yeye();

    function test() external {
        yeye.hip();
    }
}
