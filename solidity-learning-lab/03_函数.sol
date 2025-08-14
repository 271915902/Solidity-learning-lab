// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FunctionBasic {
    // 根据入参进行加法运算
    // public :函数可见范围 public表示合约内部外部都可见
    // pure:纯函数 函数内部没有查看和使用合约内部变量 仅仅是对参数做运算 
    // returns:返回值类型
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    // 根据入参进行减法运算
    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
}
