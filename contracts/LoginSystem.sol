// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract LoginSystem {
    mapping(address => bool) public isLoggedIn;
    mapping(address => string) public userHouseName;

    event UserLoggedIn(address indexed user);

    modifier onlyLoggedIn() {
        require(isLoggedIn[msg.sender], "User must be logged in.");
        _;
    }

    function connectWallet() public {
        if (!isLoggedIn[msg.sender]) {
            isLoggedIn[msg.sender] = true;
            emit UserLoggedIn(msg.sender);
        }
    }

    function setHouseName(string memory houseName) public onlyLoggedIn {
        userHouseName[msg.sender] = houseName;
    }

    function getHouseName() public view onlyLoggedIn returns (string memory) {
        return userHouseName[msg.sender];
    }

    function isUserLoggedIn() public view returns (bool) {
        return isLoggedIn[msg.sender];
    }
}