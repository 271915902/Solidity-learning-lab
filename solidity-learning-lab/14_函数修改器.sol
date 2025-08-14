// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FunctiionModifier {
    bool public flag;
    uint256 public count;

    function setFlag(bool _flag) external {
        flag = _flag;
    }

    function add() external whenNoFlag {
        // require(!flag, "paused");
        count += 1;
    }

    function sub() external whenNoFlag {
        // require(!flag, "paused");
        count -= 1;
    }

    // 目前两个函数都对flag做了判断 这一段逻辑是可以复用的 可以抽成一个函数修改器 通过关键字modifier定义
    // 然后定义函数的时候添加修改器就可以了
    // _; 表示条件满足后执行后面代码 也就是函数体内代码
    // _也可以写在上面 表示先运行代码 再运行修改器
    // _也可以写在中间 表示先执行修改器 再执行函数代码 再回来执行修改器
    modifier whenNoFlag() {
        require(!flag, "paused");
        _;
    }
}
