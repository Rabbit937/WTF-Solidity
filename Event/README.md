# 事件

`Solidity`中的事件（`event`）是`EVM`上日志的抽象，它具有两个特点:

- 响应：应用程序（`ethers.js`）可以通过`RPC`接口订阅和监听这些事件，并在前端做响应。
- 经济：事件是`EVM`上比较经济的存储数据的方式，每个大概消耗2,000`gas`;相比之下，链上存储一个新的变量至少需要20,000`gas`。

## 声明事件

```solidity
event Transfer(address indexed from, address indexed to, uint256 value);
```

- `from`转账地址
- `to`接收地址
- `value`转账数量
- `indexed`关键字，保存在以太坊虚拟机日志的topics中，方便之后检索。
