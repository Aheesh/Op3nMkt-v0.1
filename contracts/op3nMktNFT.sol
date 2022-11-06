// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Op3nMktNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Op3nMkt", "OP3N") {}

    function mintOp3n(address toAddress, string memory tokenURI) public returns (uint256) {
        uint256 newItemId = _tokenIds.current();
        _mint(toAddress, newItemId);
        _setTokenURI(newItemId, tokenURI);
        _tokenIds.increment();
        return newItemId;
    }
}
