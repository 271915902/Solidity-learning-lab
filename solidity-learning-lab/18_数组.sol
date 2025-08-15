// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Array {
    uint256[] public nums;
    // 无固定长度动态数组
    uint256[3] public nums3 = [1, 2, 3];

    // 固定长度的数组

    function handleArray() external {
        nums.push(1);
        // 给nums从后新加一个元素 固定长度的就不可以 因为长度已经固定
        uint256 x = nums[0];
        // 取出nums的第一个元素
        nums[0] = 100;
        // 给nums的第一个元素赋值
        nums.length;
        // 取出nums的长度
        delete nums[1];
        // 删除第二个元素 被删除元素为0 数组长度不变
        nums.pop();
        // 删除最后一个元素 数组长度减一
    }
}
