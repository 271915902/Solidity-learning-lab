// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Ownable {
    address public owner;

    // 定义一个变量存当前合约的管理员

    constructor() {
        owner = msg.sender;
    }

    // 构造函数初始化为当前调用该合约的地址

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    // 定义函数修改器，只有管理员可以继续操作

    function setOwner(address _newAddress) external onlyOwner {
        require(_newAddress != address(0), "invalid address");
        owner = _newAddress;
    }
    // 修改管理员地址 判断地址不为0
}
