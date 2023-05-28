// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

library StringCompose {
    function equals(string memory str, string memory otherStr) 
        internal
        pure
        returns (bool)
    {
        bytes memory bStr = bytes(str);
        bytes memory bOtherStr = bytes(otherStr);

        if (bStr.length != bOtherStr.length) {
            return false;
        }

        for (uint256 i = 0; i < bOtherStr.length; i++) {
            if (bStr[i] != bOtherStr[i]) {
                return false;
            }
        }

        return true;
    }

    function startsWith(string memory str, string memory prefix)
        internal
        pure
        returns (bool)
    {
        bytes memory bStr = bytes(str);
        bytes memory bPrefix = bytes(prefix);

        if (bStr.length < bPrefix.length) {
            return false;
        }

        for (uint256 i = 0; i < bPrefix.length; i++) {
            if (bStr[i] != bPrefix[i]) {
                return false;
            }
        }

        return true;
    }

    function isAlphanumericOrSpaces(string memory str)
        internal
        pure
        returns (bool)
    {
        bytes memory b = bytes(str);
        for (uint256 i; i < b.length; i++) {
            bytes1 char = b[i];

            if (
                !(char >= 0x30 && char <= 0x39) &&
                !(char == 0x20)
            ) {
                return false;
            }
        }

        return true;
    }
}