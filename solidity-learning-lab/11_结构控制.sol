// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract IfElse {
    function example(uint256 _x) external pure returns (uint256) {
        // if...else..语句
        if (_x < 10) {
            return 1;
        } else {
            return 2;
        }
    }

    function example2(uint256 _x) external pure returns (uint256) {
        //    也可以使用三元运算符
        return _x < 10 ? 1 : 2;
    }
}
