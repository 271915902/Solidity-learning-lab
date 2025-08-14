// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ReadOnly {
    string text = "hello";

    // 定义了一个永久存在链上的字符串
    function readPure() external pure returns (uint) {
        // pure表示纯函数 不能访问链上数据
        // 所以下面这行会报错
        // return text;
        return 1;
    }

    function readView() external view returns (string memory) {
        // view表示可以访问链上数据
        return text;
    }
}
