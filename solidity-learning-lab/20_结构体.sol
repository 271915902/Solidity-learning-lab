// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Structs {
    // 定义汽车结构体
    struct Car {
        string model;
        uint256 year;
        address owner;
    }
    // 以结构体类型声明变量
    Car public car;
    // 以结构体类型声明数组
    Car[] public cars;
    // 以结构体类型声明映射
    mapping(address => Car[]) public carsByOwner;

    function example() external {
        // 初始化一个结构体 依次传入参数 不写参数名需要按顺序传入
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        // 如果参数不按照顺序传入需要指定参数名
        // Car memory toyota = Car({year:1990,model:"Toyota",address:msg.sender});
        // 将结构体变量赋值给结构体变量
        car = toyota;
        // 将结构体变量赋值给结构体数组
        cars.push(toyota);
        // 将结构体变量赋值给结构体映射
        carsByOwner[msg.sender].push(toyota);
    }
}
