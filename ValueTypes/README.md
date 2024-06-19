# 数值类型

## Solidity中的变量类型

- 数值类型(Value Type): 包括布尔型，整数型等等，这类变量赋值时候直接传递数值。
- 引用类型(Reference Type): 包括数组和结构体，这类变量占空间大，赋值时候直接传递地址（类似指针）。
- 映射类型(Mapping Type): Solidity里的哈希表。
- 函数类型(Function Type): Solidity文档里把函数归到数值类型。
- 地址类型(Address Type): 地址类型(address)存储一个 20 字节的值（以太坊地址的大小）。地址类型也有成员变量，并作为所有合约的基础。有普通的地址和可以转账ETH的地址（payable）。其中，payable修饰的地址相对普通地址多了transfer和send两个成员。
