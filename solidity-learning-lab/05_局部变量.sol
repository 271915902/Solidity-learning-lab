// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract LocalState {
    uint256 num;

    function foo() external {
        uint256 myNum = 100;
        myNum++;
        // 只是修改了局部定义的变量,不会对链上数据有任何影响

        num = 200;
        //num为合约内变量, 修改了num 就会永久修改链上的变量
    }
}
