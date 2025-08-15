// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// 比如有一个counter合约 我们合约想调用其中的方法 就可以定义一个接口 关键字interface 接口名称通常I开头
interface ICounter {
    // 把想调用counter中的方法写在接口里 不需要实现
    function count() external view returns (uint256);
}

contract CallInterface {
    uint256 public count;

    function examples(address _counter) external {
        // 通过接口调用ICounter(传入Counter合约的地址即可)
        count = ICounter(_counter).count();
    }
}
