// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.23;

contract SmallGame {
    function randomNumber(uint256 _num) external pure returns(uint num) {
        assembly{
            let number_ := _num
            switch number_
            // Chance numbers (1, 2, 3)
            case 1 {
                num := 20
            }
            case 2 {
                num := 30
            }
            case 3 {
                num := 50
            }
            default {
                num := 51
            }
        }
    }
}