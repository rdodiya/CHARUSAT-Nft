// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721URIStorage {
    //auto-increment for each token
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    //address of contract 
    address contractAdress;

    constructor(address marketPlaceAddress) ERC721("CHARUSAT Token","CHARUSAT"){
      contractAdress = marketPlaceAddress;     
    }

    // create a new token
    function createToken(string memory tokenURI) public returns(uint){
    //set a new token id for the token to be minted 
      _tokenIds.increment();
      uint256 newItemId = _tokenIds.current();
      
      _mint(msg.sender,newItemId);          
      _setTokenURI(newItemId, tokenURI);
      setApprovalForAll(contractAdress,true);
      
      return newItemId;
    }
    
}