// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract SimpleStorage {
    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    uint256 internal myFavoriteNumber;

    Person[] public peopleList;

    mapping(string name => uint256 favoriteNumber) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) external virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function getMyFavoriteNumber() external view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) external {
        peopleList.push(Person(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
