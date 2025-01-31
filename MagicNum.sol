// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.23;

contract MagicNumb {
    uint number;

    function magic (uint _num) external pure returns(uint _outPut) {
        assembly{
            _outPut := 0
            for 
                {}
                lt(_outPut, _num)
                {_num := add(_num, 0x20)}
                {
                    _outPut := add(_outPut, 0x40)
                }
                {}
        }
        return _outPut;
    }
}