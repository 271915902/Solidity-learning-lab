// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Payable {
    // 添加payable 地址可以发送主币
    address payable public owner;

    constructor() {
        // 定义的owner具备payabl属性 但是msg.sender不具备 所以需要通过payable函数转化一下
        owner = payable(msg.sender);
    }

    // 添加payable 函数可以发主币
    function deposit() external payable {}

    function getBalance() external view returns (uint256) {
        // 查看余额 address(this)表示当前合约地址
        return address(this).balance;
    }
}
