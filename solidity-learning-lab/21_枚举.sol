// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Enum {
    // 定义枚举类型 通过索引对照
    enum Status {
        None,
        Pending,
        Completed
    }
    // 枚举类型声明变量
    Status public status;

    // 枚举类型作为函数返回值
    function getStatus() public view returns (Status) {
        return status;
    }

    // 枚举类型作为函数参数
    function setStatus(Status _status) public {
        status = _status;
    }

    // 枚举类型作为函数返回值
    function getStatusName() public view returns (string memory) {
        if (status == Status.None) {
            return "None";
        } else if (status == Status.Pending) {
            return "Pending";
        } else if (status == Status.Completed) {
            return "Completed";
        } else {
            return "Unknown";
        }
    }
}
