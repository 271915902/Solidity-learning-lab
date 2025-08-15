// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Immutable {
    // 有一些常量可能在合约部署的时候才知道 又希望赋值以后不可改变 可以使用immutable关键字
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }
}
