// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ValueTypes {
    string public greet = "Hello World!"; // string类型
    bool public boolValue = true; // bool类型
    int256 public intValue = 123; // int类型
    uint256 public uintValue = 123; // uint类型
    address public addr = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8; // address类型
    bytes32 public bytesValue = 0x4f50455241544f525f524f4c4500000000000000000000000000000000000000; // bytes类型

    // 以上为solidity里常见数据类型
}
