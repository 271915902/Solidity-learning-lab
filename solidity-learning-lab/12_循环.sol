// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ForAndWhileLoops {
    function loops() external pure {
        // for循环和JS语法一样
        for (uint256 i = 0; i < 10; i++) {
            //code....
            if (i == 3) {
                continue;
                // 跳过当前循环
            }
            // code...
            if (i == 5) {
                break;
                // 终止遍历
            }
        }
        //    while循环也和js一样
        uint256 j = 0;
        while (j < 10) {
            // 条件满足就一直循环
            j++;
        }
    }
}
