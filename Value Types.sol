//SPDX-License-Identifier:MIT
pragma solidity ^0.8.21;
contract ValueTypes {
    
    //布尔值
    bool public _bool=true;
    //布尔运算
    bool public _bool1 =_bool;//非
    bool public _bool2 =_bool && _bool1;//与
    bool public _bool3 =_bool || _bool1;//或
    bool public _bool4 =_bool == _bool1;//相等
    bool public _bool5 =_bool != _bool1;//不相等
}
    //整数
    //整数运算
    //地址
    //地址类型的成员
    //固定长度的字节数组