// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SupplyChain {
    struct Item {
        string name;
        uint quantity;
        string status;
        uint timestamp;
    }

    mapping(uint => Item) public items;
    uint public itemCount;

    function addItem(string memory _name, uint _quantity, string memory _status) public {
        itemCount++;
        items[itemCount] = Item(_name, _quantity, _status, block.timestamp);
    }

    function getItem(uint _id) public view returns (string memory, uint, string memory, uint) {
        Item memory item = items[_id];
        return (item.name, item.quantity, item.status, item.timestamp);
    }
}