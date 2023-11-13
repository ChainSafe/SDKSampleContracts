// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//  $$$$$$\  $$\   $$\  $$$$$$\  $$$$$$\ $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$$$\ 
// $$  __$$\ $$ |  $$ |$$  __$$\ \_$$  _|$$$\  $$ |$$  __$$\ $$  __$$\ $$  _____|$$  _____|
// $$ /  \__|$$ |  $$ |$$ /  $$ |  $$ |  $$$$\ $$ |$$ /  \__|$$ /  $$ |$$ |      $$ |      
// $$ |      $$$$$$$$ |$$$$$$$$ |  $$ |  $$ $$\$$ |\$$$$$$\  $$$$$$$$ |$$$$$\    $$$$$\    
// $$ |      $$  __$$ |$$  __$$ |  $$ |  $$ \$$$$ | \____$$\ $$  __$$ |$$  __|   $$  __|   
// $$ |  $$\ $$ |  $$ |$$ |  $$ |  $$ |  $$ |\$$$ |$$\   $$ |$$ |  $$ |$$ |      $$ |      
// \$$$$$$  |$$ |  $$ |$$ |  $$ |$$$$$$\ $$ | \$$ |\$$$$$$  |$$ |  $$ |$$ |      $$$$$$$$\ 
//  \______/ \__|  \__|\__|  \__|\______|\__|  \__| \______/ \__|  \__|\__|      \________|

/// @title ChainSafe Test Contract ERC20
/// @author Sneakz
/// @notice This contract holds functions used in the ChainSafe Unity SDK sample scenes. These functions are left open for testing purposes.
/// @dev All function calls are tested and have been implemented to the SDK. You can find our docs here https://docs.gaming.chainsafe.io/

contract CsTestErc20 is ERC20 {
    /// @dev Constructor to initialize info
    constructor() ERC20("CsTestErc20", "CST") {}

    /// @dev Mints an amount of ERC20 tokens to an address.
    /// @notice Minting ERC20 tokens
    /// @param _to The address to mint tokens to
    /// @param _amount The amount of tokens to mint
    /// @return True if successful
    function mint(address _to, uint256 _amount) public returns (bool) {
        _mint(_to, _amount);
        return true;
    }
}