# 常熟constant和immutable

- `constant`（常量）和`immutable`（不变量）。状态变量声明这个两个关键字之后，不能在合约后更改数值；并且还可以节省`gas`。另外，只有数值变量可以声明`constant`和`immutable`；`string`和`bytes`可以声明为`constant`，但不能为`immutable`。

## constant和immuable

### constant

`constant`变量必须在声明的时候初始化，之后再也不能改变。尝试改变的话，编译不通过。

### immuable

`immuable`变量可以在声明时或构造函数中初始化，因此更加灵活。
