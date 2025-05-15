// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
Balance: 0 ETH
string _name, uint256 _quantity, string _status

contract SupplyChain {
    struct Item {
        string name;
        uint quantity;
        string status;
        string batchId;
        string manufacturer;
        string origin;
        string destination;
        string temperature;
        uint timestamp;
    }

    mapping(uint => Item) public items;
    uint public itemCount;

    function addItem(
        string memory _name,
        uint _quantity,
        string memory _status,
        string memory _batchId,
        string memory _manufacturer,
        string memory _origin,
        string memory _destination,
        string memory _temperature
    ) public {
        itemCount++;
        items[itemCount] = Item(
            _name,
            _quantity,
            _status,
            _batchId,
            _manufacturer,
            _origin,
            _destination,
            _temperature,
            block.timestamp
        );
    }

    function getItem(uint _id) public view returns (
        string memory, uint, string memory, string memory,
        string memory, string memory, string memory, string memory, uint
    ) {
        Item memory item = items[_id];
        return (
            item.name,
            item.quantity,
            item.status,
            item.batchId,
            item.manufacturer,
            item.origin,
            item.destination,
            item.temperature,
            item.timestamp
        );
    }
}
