# 函数类型

## Solidity中的函数

```solidity
function <function name>(<parameter types>) {internal|external|public|private} [pure|view|payable] [returns (<return types>)]
```

解释：

1. `function`：声明关键字。
2. `<function name>`:函数名。
3. `(<parameter types>)`: 圆括号内写入函数的参数，即输入到函数的变量类型和名称
4. `{internal|external|public|private}`: 函数可见性说明符，共有四种。
    - `internal`: 只能从合约内部访问，继承的合约可以用
    - `external`: 只能从合约外部访问
    - `public`: 内部外部均可见。
    - `private`: 只能从本合约内部访问，继承的合约也不能用。
    **Note 1**: 没有标明可见性类型的函数，默认为`public`。
    **Note 2**: `public|private|internal`也可用于修饰状态变量。`public`变量会自动生成`getter`函数，用于查询数值。
    **Note 3**: 没有标明可见性类型的状态变量，默认为`internal`。
5. `[pure|view|payable]`: 决定函数权限/功能的关键字。`payable`（可支付的）很好理解，带着它的函数，运行的时候可以给合约转入ETH。`pure`包含pure关键字的函数，不能读取也不能写入存储在链上的状态变量。`view`包含view关键字的函数，能读取但也不能写入状态变量。
6. `[returns ()]`: 函数返回的变量类型和名称。
