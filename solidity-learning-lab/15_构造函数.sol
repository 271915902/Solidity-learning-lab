// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Constructor {
    uint256 num;

    // 构造函数在合约执行的时候只会执行一次就再也不执行了 通常用来初始化一些数据
    constructor(uint256 _n) {
        num = _n;
    }
}
