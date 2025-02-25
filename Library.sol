
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract Library {

    struct Book {
        string name;
        string author;
        bool isBorrowed;
    }

    address immutable admin;
    uint256 count = 1;
    mapping (uint256 => Book) books;
    mapping (address => uint256[])  borrowers;

    constructor(){
        admin = msg.sender;
    }

    modifier onlyAdmin{
        require(msg.sender == admin , "Only admin!!");
        _;
    }

    function addBook(string memory _name, string memory _author) public onlyAdmin {
        books[count] = Book ({
            name : _name,
            author: _author,
            isBorrowed: false
        });
        count += 1;
    }

    function getBook(uint256 _id) public view returns (Book memory book) {
        return books[_id];
    }

    function borrowBook(uint256 _id) public {
        require(!books[_id].isBorrowed, "The book has been borrowed");
        books[_id].isBorrowed = true;
        borrowers[msg.sender].push(_id);
    }

    function returnBook(uint256 _id) public {
        books[_id].isBorrowed = false;
        uint256[] memory newArray = new uint256[](borrowers[msg.sender].length-1);
        uint256 i = 0;
        for (uint256 j = 0 ; j < borrowers[msg.sender].length ; j++){
            if (borrowers[msg.sender][i] != _id) {
                newArray[j] = borrowers[msg.sender][i];
                j++;
            }
        }
        borrowers[msg.sender] = newArray;
    }

}