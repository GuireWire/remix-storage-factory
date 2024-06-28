// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import{SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    // To add +5 to everyones favorite number see below:
    // it is known as Overrides - override goes into this contract and the word virtual goes into the SimpleStorage contract
    function store(uint256 _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 5;
    }

    // This example below is to add the function of saying Hello 
    // function sayHello() public pure returns (string memory){
    // return "Hello";
    }