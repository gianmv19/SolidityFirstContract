// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating our version

// import "./SimpleStorage.sol"; //import all the content
import {SimpleStorage} from "./SimpleStorage.sol"; //import only this specific content

contract StorageFactory{

    //SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfSimpleStorageContracts;
    // address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
       //simpleStorage = new SimpleStorage();
       SimpleStorage newSimpleStorageContract = new SimpleStorage();
       listOfSimpleStorageContracts.push(newSimpleStorageContract);

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // // ABI (application binary interface)
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
