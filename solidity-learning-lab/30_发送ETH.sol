// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SendEther {
    constructor() payable {}

    receive() external payable {}

    function sendByTransfer(address payable _to) external payable {
        _to.transfer(100);
        // 失败会reverts
    }

    function sendBySend(address payable _to) external payable {
        bool success = _to.send(100);
        // send方法会返回布尔值 不会中断合约 需要确认判断一下
        require(success, "Send Failed");
    }

    function sendByCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: 100}("");
        // call方法会返回布尔值和data 不会中断合约 需要确认判断一下
        require(success, "Call Failed");
    }
}
