// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Constants {
    address public constant MY_ADDRESS =
        0x70997970C51812dc3A010C7d01b50e0d17dc79C8;
    // 通过constant关键字定义常量
}

contract Var {
    address public myAddress = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;
    // 和常量相比 消耗更高的gas
}
