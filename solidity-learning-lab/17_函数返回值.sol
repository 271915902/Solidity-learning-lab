// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FunctionReturn {
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    function returnNamed() public pure returns (uint256 x, bool b) {
        //  return (1, true);
        x = 1;
        b = true;
        // 当returns给返回值命名了 可以直接返回 也可以通过给变量赋值 也会返回
    }

    function handleReturnMany() public pure {
        (uint256 x, bool b) = returnMany();
        // 这里针对returnMany返回多个值 左边也是用类似解构的方式接受
        (, bool c) = returnMany();
        // 如果只想要第二个值 左边不写但是逗号要保留
    }
}
