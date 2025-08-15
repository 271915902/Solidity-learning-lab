// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// 如果合约中有用到很多数学方法，可以把他们都放在一个库library里
library Math {
    // 举例 求最大值函数
    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return x >= y ? x : y;
    }
}

// 合约内使用Math.max(x,y)即可
