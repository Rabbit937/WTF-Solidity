# 映射类型 mapping

## 映射类型Mapping

在映射中，人们可以通过键（Key）来查询对应的值（Value），比如：通过一个人的id来查询他的钱包地址。

## 映射的规则

- **规则1：**映射的`_KeyType`只能选择`solidity`默认的类型，比如`uint`,`address`等，不能用自定义的结构体。而`_ValueType`可以使用自定义的类型。
- **规则2：**映射的存储位置必须是`storage`，因此可以用于合约的状态变量，函数中的`storage`变量，和`library`函数的参数（见例子）。不能用于`public`函数的参数或返回结果中，因为`mapping`记录的是一种关系 (key - value pair)。
- **规则3：**如果映射声明为`public`，那么`solidity`会自动给你创建一个`getter`函数，可以用过`Key`来查询对应的`Value`。
- **规则4：**给映射新增的键值对的语法为`_Var[_Key] = _Value`，其中`_Var`是映射变量名，`_Key`和`_Value`对应新增的键值对。

## 映射的原理

- **原理1：**映射不储存任何键（`Key`）的资讯，也没有length的资讯。
- **原理2：**映射使用`keccak256(key)`当成offset存取value。
- **原理3：**因为Ethereum会定义所有未使用的空间为0，所以未赋值（`Value`）的键（`Key`）初始值都是各个type的默认值，如uint的默认值是0。
