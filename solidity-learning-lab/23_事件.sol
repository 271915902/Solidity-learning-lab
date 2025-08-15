// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Event {
    // 通过event 定义时间函数 可以接收参数
    event Log(string message, uint256 val);

    function emitEvent(string memory _message, uint256 _val) public {
        // emit触发事件 通常前端浏览器会捕捉到 然后进行交互
        emit Log(_message, _val);
    }
}
