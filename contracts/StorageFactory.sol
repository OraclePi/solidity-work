// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{

    
    SimpleStorage[] public listofsimplestorageContracts;

    function CreateSimpleStorageContract() public {
        SimpleStorage newsimpleStorage = new SimpleStorage();
        listofsimplestorageContracts.push(newsimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint _simpleStorageNumber) public {
        listofsimplestorageContracts[_simpleStorageIndex].Store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listofsimplestorageContracts[_simpleStorageIndex].retrieve();
    }

}