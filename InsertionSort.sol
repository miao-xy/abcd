// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract InsertionSort {
    //if else
    function ifElseTest(uint256 _number) public pure returns (bool) {
        if(_number == 0) {
            return true;
        }else {
            return false;
        }
    }

    //for loop for循环
    function forLoopTest() public pure returns(uint256) {
        uint sum = 0;
        for (uint i = 0;i < 10;i++) {
            sum += i;
        }
        return (sum);
    } 
    //whlie循环
    function whileTest() public pure returns(uint256) {
        uint sum = 0;
        uint i = 0;
        while (i < 11) {
            sum +=i;
            i++;
        }
        return (sum);
    }
    //do-whlie
    function dowhlieTest() public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 0;
        do{
            sum += i;
            i++;
        }while (i < 12);
        return (sum);
    }

    //三目运算符

    function ternaryTest(uint256 x,uint256 y)public pure returns (uint256){
        return x > y ? x : y;
    }

    function ternaryBool(uint256 x,uint256 y)public pure returns (bool){
        return x > y ? true : false;
    }

    //输入排序
    function insertionSort(uint[] memory a) public pure returns(uint[] memory) {
        for (uint i = 1; i < a.length;i++) {
            uint temp = a[i];
            uint j=i;
            while ((j >= 1)&&(temp < a[j - 1]))  {
                a[j] = a[j-1];
                j--;
            }
            a[j] = temp;
        }
        return (a);
    }
}