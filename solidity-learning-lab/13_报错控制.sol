// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ErrorDemo {
    function testRequire(uint256 _i) public pure {
        // require(condition); 必须满足条件才会执行后面代码 否则返回报错信息
        require(_i <= 10, "i>10");
        // code....
    }

    function testRevert(uint256 _i) public pure {
        // revert()只传报错信息
        if (_i > 1) {
            // code....
            if (_i > 10) {
                revert("i>10");
            }
        }
    }

    uint256 public num = 123;

    function testAssert() public view {
        // assert(condition); 断言 如果再定义一个函数 让num+1 那么就不满足断言等于123 就会报错
        assert(num == 123);
    }

    // 通过error自定义错误 通过revert处罚 还可以传递参数
    error MyError(address caller, uint256 num);

    function testCustomError(uint256 _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
