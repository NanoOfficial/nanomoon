// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

library StringConcat {
    function concat(string memory s1, string memory s2)
        internal
        pure
        returns (string memory)
    {
        return string.concat(s1, s2);
    }

    function join(string[] memory ss) internal pure returns (string memory) {
        return join(ss, ",");
    }

    function join(string[] memory ss, string memory joiner)
        internal
        pure
        returns (string memory)
    {
        string memory result = "";
        for (uint256 i = 0; i < ss.length; i += 1) {
            if (i != 0) {
                result = StringConcat.concat(result, joiner);
            }
            result = StringConcat.concat(result, ss[i]);
        }
        return result;
    }

    function concat(string[] memory ss) internal pure returns (string memory) {
        return join(ss, "");
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2), s3);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3), s4);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3, s4), s5);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3, s4, s5), s6);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6,
        string memory s7
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3, s4, s5, s6), s7);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6,
        string memory s7,
        string memory s8
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3, s4, s5, s6, s7), s8);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6,
        string memory s7,
        string memory s8,
        string memory s9
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3, s4, s5, s6, s7, s8), s9);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6,
        string memory s7,
        string memory s8,
        string memory s9,
        string memory s10
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3, s4, s5, s6, s7, s8, s9), s10);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6,
        string memory s7,
        string memory s8,
        string memory s9,
        string memory s10,
        string memory s11
    ) internal pure returns (string memory) {
        return concat(concat(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10), s11);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6,
        string memory s7,
        string memory s8,
        string memory s9,
        string memory s10,
        string memory s11,
        string memory s12
    ) internal pure returns (string memory) {
        return
            concat(concat(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11), s12);
    }

    function concat(
        string memory s1,
        string memory s2,
        string memory s3,
        string memory s4,
        string memory s5,
        string memory s6,
        string memory s7,
        string memory s8,
        string memory s9,
        string memory s10,
        string memory s11,
        string memory s12,
        string memory s13
    ) internal pure returns (string memory) {
        return
            concat(
                concat(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12),
                s13
            );
    }
}