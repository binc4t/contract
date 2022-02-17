// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract PatHouse {
    struct Pat {
        string name;
        uint age;
        address owner;
    }

    address public patHouseOwner;

    mapping(address => Pat) public pats;

    constructor() {
        patHouseOwner = msg.sender;
    }

    function createPat(string memory name) public {
        pats[msg.sender] = Pat(name, 0, msg.sender);
    }

    function myPat() public view returns (string memory name) {
        name = pats[msg.sender].name;
    }
}