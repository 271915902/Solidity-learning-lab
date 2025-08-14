// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Counter {
    // 计数器合约
    // 合约内部定义一个count变量
    // 通过addCount和subCount函数修改count变量
    uint256 public count = 0;

    function addCount() external {
        count+=1;
    }

    function subCount() external {
        count-=1;
    }
}
