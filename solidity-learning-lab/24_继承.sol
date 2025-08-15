// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// 定义了A合约和B合约 现在可以让B合约继承A合约 那么B合约就可以使用A合约里的方法
contract A {
    // 因为B合约里也有一个foo函数 所以可以对foo函数进行重写 A合约给函数加virtual关键字 B合约添加override
    function foo() public pure virtual returns (string memory) {
        return "aaa";
    }

    function bar() public pure {}
}

// is关键字 表示继承自谁 B is A  B合约继承A合约
contract B is A {
    function foo() public pure override returns (string memory) {
        // do something
        return "hello";
    }
}

// 如果有C合约继承了B 那么因为B继承了A 所以C也会继承A
