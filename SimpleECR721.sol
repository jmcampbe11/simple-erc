// SPDX-License-Identifier: MIT
// Description: Basic ERC721 contract that uses IPFS 

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC721Test is ERC721URIStorage, Ownable {

	constructor (string memory name, string memory symbol) ERC721(name, symbol) { }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://";
    }

    function safeMint(address to, uint256 tokenId, string memory _tokenURI) public onlyOwner {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, _tokenURI);
    }
}