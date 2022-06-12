// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "hardhat/console.sol";


contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint) public waves;

    constructor() {
        console.log("This is Zay's first (not so) smart contract.");
    }

    function wave() public {
        waves[msg.sender] += 1;
        totalWaves += 1;
        console.log("Waving in the breeze, sender sways..");
        console.log("%s waves at us for an account total of %d", msg.sender, waves[msg.sender]);
        console.log("Total Accumulated Waves: %d", totalWaves);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have been waved at a grand total of %d times.", totalWaves);
        return totalWaves;
    }

    function getAccountWaves() public view returns (uint256) {
        console.log("We have been waved at by %s a total of %d times!", msg.sender, waves[msg.sender]);
        return waves[msg.sender];
    }
}
