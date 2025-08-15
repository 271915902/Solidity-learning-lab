// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract DataLocations {
    // 智能合约中数据可以存在
    // storage:状态变量
    // memory:局部变量
    // calldata:只能用于参数
    struct MyStruct {
        uint256 foo;
        string text;
    }
    mapping(address => MyStruct) public myStructs;

    function example() external {
        myStructs[msg.sender] = MyStruct(123, "hello");
        // 给映射里添加数据
        MyStruct storage myStruct = myStructs[msg.sender];
        // 把数据取出来赋值给myStruct
        myStruct.text = "haha";
        // 因为storage是合约内状态变量 所以修改他会直接影响 mapping里的数据
        MyStruct memory myStruct2 = myStructs[msg.sender];
        myStruct2.text = "nihao";
        // memory是局部变量 所以修改的时候 不会影响原状态变量 函数执行完 值还是最初的值
    }
}
