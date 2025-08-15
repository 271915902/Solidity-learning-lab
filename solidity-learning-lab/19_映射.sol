// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Mapping {
    // 举例 根据地址查看余额 类似js的对象
    // {key:value,key1:value1}
    mapping(address => uint256) public balances;
    // 嵌套映射
    mapping(address => mapping(address => bool)) public isApprovedForAll;

    function example() external {
        // 给映射赋值
        balances[msg.sender] = 100;
        // 获取映射的值
        uint256 balance = balances[msg.sender];
        // 给嵌套映射赋值
        isApprovedForAll[msg.sender][address(0x0)] = true;
        // 获取嵌套映射的值
        bool approved = isApprovedForAll[msg.sender][address(0x0)];
        // 删除 只会变成默认值 不会真正删除
        delete balances[msg.sender];
        delete isApprovedForAll[msg.sender][address(0x0)];
    }
}
