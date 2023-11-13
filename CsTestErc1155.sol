// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

//  $$$$$$\  $$\   $$\  $$$$$$\  $$$$$$\ $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$$$\ 
// $$  __$$\ $$ |  $$ |$$  __$$\ \_$$  _|$$$\  $$ |$$  __$$\ $$  __$$\ $$  _____|$$  _____|
// $$ /  \__|$$ |  $$ |$$ /  $$ |  $$ |  $$$$\ $$ |$$ /  \__|$$ /  $$ |$$ |      $$ |      
// $$ |      $$$$$$$$ |$$$$$$$$ |  $$ |  $$ $$\$$ |\$$$$$$\  $$$$$$$$ |$$$$$\    $$$$$\    
// $$ |      $$  __$$ |$$  __$$ |  $$ |  $$ \$$$$ | \____$$\ $$  __$$ |$$  __|   $$  __|   
// $$ |  $$\ $$ |  $$ |$$ |  $$ |  $$ |  $$ |\$$$ |$$\   $$ |$$ |  $$ |$$ |      $$ |      
// \$$$$$$  |$$ |  $$ |$$ |  $$ |$$$$$$\ $$ | \$$ |\$$$$$$  |$$ |  $$ |$$ |      $$$$$$$$\ 
//  \______/ \__|  \__|\__|  \__|\______|\__|  \__| \______/ \__|  \__|\__|      \________|

/// @title ChainSafe Test Contract ERC1155
/// @author Sneakz
/// @notice This contract holds functions used in the ChainSafe Unity SDK sample scenes. These functions are left open for testing purposes.
/// @dev All function calls are tested and have been implemented to the SDK. You can find our docs here https://docs.gaming.chainsafe.io/

contract CsTestErc1155 is ERC1155 {
    /// @dev Constructor to initialize info
    constructor() ERC1155("https://ipfs.chainsafe.io/ipfs/QmfUHuFj3YL2JMZkyXNtGRV8e9aLJgQ6gcSrqbfjWFvbqQ") {}

    /// @dev Mints ERC1155 tokens to an account
    /// @notice Minting ERC1155 tokens
    /// @param _to The account to mint tokens to
    /// @param _id The token id to mint
    /// @param _amount The amount of tokens being minted
    /// @param _data Data in bytes
    /// @return True if successful
    function mint(address _to, uint256 _id, uint256 _amount, bytes memory _data) public returns (bool) {
        _mint(_to, _id, _amount, _data);
        return true;
    }

    /// @dev Mints batches of ERC1155 tokens to an account
    /// @notice Minting a batch of ERC1155 tokens
    /// @param _to The accounts to mint tokens to
    /// @param _ids The token id to mint
    /// @param _amounts The amount of tokens being minted
    /// @param _data Data in bytes
    /// @return True if successful
    function mintBatch(address _to, uint256[] memory _ids, uint256[] memory _amounts, bytes memory _data) public returns (bool) {
        _mintBatch(_to, _ids, _amounts, _data);
        return true;
    }
}