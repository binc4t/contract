// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract PetHouse {
    struct Pet {
        string name;
        uint level;
        address owner;
    }

    address public petHouseOwner;

    mapping(address => Pet) public pets;

    constructor() {
        petHouseOwner = msg.sender;
    }

    function createPet(string memory name) public {
        pets[msg.sender] = Pet(name, 0, msg.sender);
    }

    function levelUp() public {
        pets[msg.sender].level++;
    }

    function myPet() public view returns (string memory name, uint level) {
        name = pets[msg.sender].name;
        level = pets[msg.sender].level;
    }
}