// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";


contract StorageFactory{

    SimpleStorage public simpleStorage;

    function CreateSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }

}