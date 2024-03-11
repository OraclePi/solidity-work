// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract SimpleStorage {
    bool hasFavoriteNumber = true;
    
    bytes4 mybytes = "test";
    
    uint256 public favoriteNumber = 0;
    
    uint256[] list_of_favorite_number;
    
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public list_of_people;

    mapping(string => uint256) public NametoNumber;
    
    function Store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function add_list_of_person(string memory  _name, uint256 _favoriteNumber) public{
        list_of_people.push( Person(_favoriteNumber, _name) );
        NametoNumber[_name] = _favoriteNumber;
    }


}
