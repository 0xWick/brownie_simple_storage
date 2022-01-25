// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

//Storage Program by Patrick, freecodecamp!
contract SimpleStorage {
    // Initial value = 0
    uint256 favouriteNumber;
    uint256 add;

    // Function to store a a value in a variable
    function store(uint256 _favouriteNumber) public {
        // _favouriteNumber is only in the scope of this function, when we pass its value to favouriteNumber
        // we can access it outside the function because favouriteNumber is a Global Variable
        favouriteNumber = _favouriteNumber;
    }

    // View & Pure functions just read off the blockchain thus not making any state changes

    // pure functions are used for purely doing math, not sure how we gonna use it if we can't make state changes XD !!!
    function addition(uint256 _add) public pure {
        _add + _add;
    }

    //view function to retrieve our value
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    // Lets add struct now, its like objects in other languages
    struct People {
        uint256 favNum;
        string name;
    }
    //Add values to struct
    People public person = People({favNum: 69, name: "WickB"});

    // Lets add more than 1 persons using Arrays

    //Defining a Dynamic Array
    People[] public people;

    // Finding Wick using Mapping
    mapping(uint256 => string) public WickToNum;

    // function for appending users in People Lists
    function addPerson(string memory _name, uint256 _favNum) public {
        people.push(People({favNum: _favNum, name: _name}));
        people.push(People({favNum: 7, name: "WickJ"}));

        //Adding Mapping in here
        WickToNum[_favNum] = _name;
    }
}
