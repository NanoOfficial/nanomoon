// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

library StringCompare {
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

    function contains(string memory str, string memory substr)
        internal
        pure
        returns (bool)
    {
        bytes memory bStr = bytes(str);
        bytes memory bSubstr = bytes(substr);

        if (bStr.length < bSubstr.length) {
            return false;
        }


        if (bSubstr.length == 0) {
            return true;
        }

        uint256 matchedChars = 0;
        for (uint256 i = 0; i < bStr.length; i += 1) {
            if (bStr[i] != bSubstr[matchedChars]) {
                matchedChars = 0;
            }

            if (bStr[i] == bSubstr[matchedChars]) {
                matchedChars += 1;
            }

            if (matchedChars == bSubstr.length) {
                return true;
            }
        }

        return false;
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
                !(char >= 0x41 && char <= 0x5A) && 
                !(char >= 0x61 && char <= 0x7A) && 
                !(char == 0x20) 
            ) {
                return false;
            }
        }

        return true;
    }
}