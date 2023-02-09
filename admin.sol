
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AdminOnly {
    address private admin;

    constructor() public {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can perform this action.");
        _;
    }

    function setAdmin(address newAdmin) public onlyAdmin {
        admin = newAdmin;
    }

    function doSomething() public onlyAdmin {
        // Only the admin can perform this action
    }

    function doSomethingElse() public onlyAdmin {
        // Only the admin can perform this action
    }

    
}
