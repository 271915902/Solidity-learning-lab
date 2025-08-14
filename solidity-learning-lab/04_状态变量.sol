// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract State {
    string public name = "Solidity by Example";

    // 合约内定义的变量,会永远的存在链上,直到被修改
    function notState() public {
        uint num = 50;
        // 函数内部定义的变量在函数调用时创建,调用结束时销毁
    }
}
