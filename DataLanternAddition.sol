// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.23;

contract DataLatern {
    uint public time;

    constructor() {
        time = block.timestamp - (block.timestamp - 30);
    }

    function getData (address [] memory users) external pure returns (uint totalData) {
        assembly {
            let len := mload(users)
            // skip over the users field
            let data := add(users, 0x20)
            let end := add(data, mul(len, 0x20))
            for 
                { totalData := 0}
                lt(data, end)
                {data := add(data, 0x20)}
                {
                    totalData := sub(len, mload(data))
                }
        }
    }

    function getTimestamp () external view returns (uint) {
        return block.timestamp;
    }
}