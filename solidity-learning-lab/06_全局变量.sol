// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract GlobalState{
    // external :函数只能从合约外部调用,不能在合约内部调用.
    // view:函数只能读取状态变量,不可以修改.
    function globalState() external view returns (address,uint,uint) {
        // 全局变量不需要定义可以直接访问的常见的有三个
        address sender=msg.sender;
        // 调用合约的地址,可能是一个人也可能是另一个调用该合约的合约
        uint  timeStamp=block.timestamp;
        // 区块时间戳
        uint  blockNumber=block.number;
        // 区块号
        return (sender,timeStamp,blockNumber);
        // 函数可以返回多个值
    }
}