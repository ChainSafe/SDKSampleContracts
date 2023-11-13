// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


//  $$$$$$\  $$\   $$\  $$$$$$\  $$$$$$\ $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$$$\ 
// $$  __$$\ $$ |  $$ |$$  __$$\ \_$$  _|$$$\  $$ |$$  __$$\ $$  __$$\ $$  _____|$$  _____|
// $$ /  \__|$$ |  $$ |$$ /  $$ |  $$ |  $$$$\ $$ |$$ /  \__|$$ /  $$ |$$ |      $$ |      
// $$ |      $$$$$$$$ |$$$$$$$$ |  $$ |  $$ $$\$$ |\$$$$$$\  $$$$$$$$ |$$$$$\    $$$$$\    
// $$ |      $$  __$$ |$$  __$$ |  $$ |  $$ \$$$$ | \____$$\ $$  __$$ |$$  __|   $$  __|   
// $$ |  $$\ $$ |  $$ |$$ |  $$ |  $$ |  $$ |\$$$ |$$\   $$ |$$ |  $$ |$$ |      $$ |      
// \$$$$$$  |$$ |  $$ |$$ |  $$ |$$$$$$\ $$ | \$$ |\$$$$$$  |$$ |  $$ |$$ |      $$$$$$$$\ 
//  \______/ \__|  \__|\__|  \__|\______|\__|  \__| \______/ \__|  \__|\__|      \________|


/// @title ChainSafe Test Contract Array & Total
/// @author Sneakz
/// @notice This contract holds functions used in the ChainSafe Unity SDK sample scenes. These functions are left open for testing purposes.
/// @dev All function calls are tested and have been implemented to the SDK. You can find our docs here https://docs.gaming.chainsafe.io/

contract ArrayAndTotal {
    /// @dev Needed variables
    string[] testArray = ["0xFb3aECf08940785D4fB3Ad87cDC6e1Ceb20e9aac", "0x92d4040e4f3591e60644aaa483821d1bd87001e3"];
    mapping(address => uint256) public myTotal;

    /// @dev Adds to the users total
    /// @notice Adding to total
    /// @param _myArg The amount to set the total to
    function addTotal(uint256 _myArg) public {
        myTotal[msg.sender] = _myArg;
    }

    /// @dev Changes the array values
    /// @notice Changing array values
    /// @param _addresses The addresses to insert into the array
    function setStore(string[] memory _addresses) public {
        testArray[0] = _addresses[0];
        testArray[1] = _addresses[1];
    }

    /// @dev Returns the array values saved in the contract
    /// @notice Get arrray values
    function getStore() public view returns (string[] memory) {
        return testArray;
    }
}