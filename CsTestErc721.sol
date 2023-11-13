// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

//  $$$$$$\  $$\   $$\  $$$$$$\  $$$$$$\ $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$$$\ 
// $$  __$$\ $$ |  $$ |$$  __$$\ \_$$  _|$$$\  $$ |$$  __$$\ $$  __$$\ $$  _____|$$  _____|
// $$ /  \__|$$ |  $$ |$$ /  $$ |  $$ |  $$$$\ $$ |$$ /  \__|$$ /  $$ |$$ |      $$ |      
// $$ |      $$$$$$$$ |$$$$$$$$ |  $$ |  $$ $$\$$ |\$$$$$$\  $$$$$$$$ |$$$$$\    $$$$$\    
// $$ |      $$  __$$ |$$  __$$ |  $$ |  $$ \$$$$ | \____$$\ $$  __$$ |$$  __|   $$  __|   
// $$ |  $$\ $$ |  $$ |$$ |  $$ |  $$ |  $$ |\$$$ |$$\   $$ |$$ |  $$ |$$ |      $$ |      
// \$$$$$$  |$$ |  $$ |$$ |  $$ |$$$$$$\ $$ | \$$ |\$$$$$$  |$$ |  $$ |$$ |      $$$$$$$$\ 
//  \______/ \__|  \__|\__|  \__|\______|\__|  \__| \______/ \__|  \__|\__|      \________|

/// @title ChainSafe Test Contract ERC721
/// @author Sneakz
/// @notice This contract holds functions used in the ChainSafe Unity SDK sample scenes. These functions are left open for testing purposes.
/// @dev All function calls are tested and have been implemented to the SDK. You can find our docs here https://docs.gaming.chainsafe.io/

contract CsTestErc721 is ERC721, ERC721URIStorage {
    /// @dev Needed variables
    uint256 private _nextTokenId;

    /// @dev Constructor to initialize info
    constructor()ERC721("CsTestErc721", "CS721") {}

    /// @dev Base URI to call metadata from
    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.chainsafe.io/ipfs/";
    }

    /// @dev Mints ERC721 tokens to an account with a Uri.
    /// @notice Minting ERC20 tokens.
    /// @param _to The address to mint tokens to.
    /// @param _uri The Uri of the token being minted.
    function safeMint(address _to, string memory _uri) public {
        uint256 tokenId = _nextTokenId++;
        _safeMint(_to, tokenId);
        _setTokenURI(tokenId, _uri);
    }

    /// @dev The following functions are overrides required by Solidity.

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}