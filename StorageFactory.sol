// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageContractsList;

    address[] public simpleStorageContractsAddressesList;

    function createSimpleStorageContract() public {
        // ABI
        // Address
        SimpleStorage newSimpleStorage = new SimpleStorage();
        simpleStorageContractsList.push(newSimpleStorage);
        simpleStorageContractsAddressesList.push(address(newSimpleStorage));
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _newFavoriteNumber
    ) external {
        simpleStorageContractsList[_simpleStorageIndex].store(
            _newFavoriteNumber
        );
    }

    function sfGetSimpleStorageContract(
        uint256 _simpleStorageIndex
    ) public view returns (uint256) {
        return
            simpleStorageContractsList[_simpleStorageIndex]
                .getMyFavoriteNumber();
    }
}
