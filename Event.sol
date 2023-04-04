// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Event {

    event Log(string message, uint value);
    event indexedLog(address indexed sender, uint value);

    function example() external {
        emit Log("Akhil", 4444);
        emit indexedLog(msg.sender, 22);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
         emit Message(msg.sender, _to, message);
    }
}


    