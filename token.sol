// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Token {

    // public variables
    string public t_Name = "Future"; // token name
    string public t_Abbrv = "FTR"; // token abbreviation
    uint public t_supply = 0; // total supply

    // mapping variable
    mapping(address => uint) public balance;

    // mint function
    function minting(address addr, uint val) public{
        t_supply += val;
        balance[addr] += val;
    }

    // burn function
    function burning(address addr, uint val) public{
        if(balance[addr]>=val)
        {
        t_supply -= val;
        balance[addr] -= val; 
        }
        
    }

}
