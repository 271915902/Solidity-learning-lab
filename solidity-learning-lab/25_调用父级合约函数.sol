// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract A {
    function bar() public pure {}
}

contract B is A {
    function foo() public pure {
        // 调用父级合约 两种方法
        A.bar();
        super.bar();
    }
}
