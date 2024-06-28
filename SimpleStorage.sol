// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;  // this is the solidity version. the ^ means anything .26 and above

//>= 0.8.18 < 0.9.0 means anything greater or equal to .8.18 but less than .9.0
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

//SimpleStorage is the name of the contract
contract SimpleStorage {
    //Basic Types: boolean, uint, int, address, bytes
    uint256 myFavoriteNumber; // favorite number goes to 0 if no value is given

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
     //this array below is known as a dynamic array
    Person[] public listOfPeople;

    //this array below is known as a static array
    // Person[3] public listOfPeople; //[]

    //Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    //Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
    //Person public john = Person({favoriteNumber: 12, name: "John"});

    //if you look up John it will bring up its fav number

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    //view - reads the state from the blockchain ,pure - modifies the state therefore it costs gas
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract SimpleStorage2 {}

contract SimpleStorage3 {}

contract SimpleStorage4 {}