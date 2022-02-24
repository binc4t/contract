// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleCollectible is ERC721 {
    uint256 public tockenCounter;
    constructor() ERC721("Mercy", "Overwatch") {
        tockenCounter = 0;
    }

    function CreateOne(string memory tokenURI) public returns (uint256) {
        uint256 newItemID = tockenCounter;
        _safeMint(msg.sender, newItemID);
        _setTokenURI(newItemID, tokenURI);
        tockenCounter = tockenCounter + 1;
        return newItemID;
    }
}