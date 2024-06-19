// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Pair {
    address public factory; // 工厂合约地址
    address public token0; // 代币1
    address public token1; // 代币2

    constructor() payable {
        factory = msg.sender;
    }

    // called once by the factory at time of deployment
    function initialize(address _token0, address _token1) external {
        require(msg.sender == factory, "UniswapV2: FORBIDDEN"); // sufficient check
        token0 = _token0;
        token1 = _token1;
    }
}

contract PairFactory2 {
    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs;

    function createPair2(
        address tokenA,
        address tokenB
    ) external returns (address pairAddr) {
        require(tokenA != tokenB, "IDENTICAL_ADDRESSES");
        (address token0, address token1) = tokenA < tokenB
            ? (tokenA, tokenB)
            : (tokenB, tokenA);

        bytes32 salt = keccak256(abi.encodePacked(token0, token1));

        Pair pair = new Pair{salt: salt}();

        pair.initialize(tokenA, tokenB);

        pairAddr = address(pair);
        allPairs.push(pairAddr);
        getPair[tokenA][tokenB] = pairAddr;
        getPair[tokenA][tokenB] = pairAddr;
    }

    // 提前计算pair合约地址
    function calculateAddr(
        address tokenA,
        address tokenB
    ) public view returns (address predictedAddress) {
        
    }
}
