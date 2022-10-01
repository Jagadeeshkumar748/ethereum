// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
contract FundMe{
    uint256 public number;
    address[] public funders;
    mapping(address=>uint256) public addressToAmoutFunded;
    function fund() public payable{
        number = 5;

        require(msg.value > 1e18,"not enough");
        funders.push(msg.sender);
        addressToAmoutFunded[msg.sender]=msg.value;
    }
}
