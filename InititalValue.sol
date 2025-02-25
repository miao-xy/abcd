// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Initivalvalue {
    bool public _bool; //false
    string public _string; //""
    int256 public _int; //0
    uint256 public _uint; //0
    address public _address; //0x0000000000

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet public _enum; 

    uint256 [8] public _staticArray;
    uint256[] public _dynamicArray;

    function getView() public view returns (uint256[8] memory,uint256[] memory) {
       return (_staticArray,_dynamicArray);
    } 
    function fi() internal {}//空白函数

    function fe() external {}//空白函数

    struct Student {
         uint256 id;
         uint256 score;
    }

    Student public student; //所有成员设为其默认值的结构体
    bool public _bool2 = true;
    function d() external {
        delete _bool2;//delete会让_bool变为默认值
    }

    }