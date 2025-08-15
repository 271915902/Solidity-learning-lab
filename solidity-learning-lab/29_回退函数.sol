// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FullBack {
    // fallback函数 当合约访问了不存在的函数 或者发送了主币 就会调用并执行fallback
    fallback() external payable {}

    // receive也是回退函数 它只负责合约发送主币触发
    receive() external payable {}

    // 如果智能合约发送了主币和数据 调用fallbcak
    // 如果智能合约只发送了主币 调用receive
    // 如果receive不存在 都调用fallback
}
