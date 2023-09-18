// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

//DeploySimpleStorage is a script to deploy SimpleStorage contract and inherit from Script contract
// Script is provided in foundry package
contract DeploySimpleStorage is Script {
    //Main function that we call during deployment of the contract
    function run() external returns (SimpleStorage) {
        //vm is a foundry keyword (cheatcode)
        vm.startBroadcast();
        //Create a new instance of SimpleStorage contract
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
