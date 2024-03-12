// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    
    function Store(uint256 _newFavNumber) public override {
        favoriteNumber = _newFavNumber + 5;
    }

}