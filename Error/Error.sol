// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

error TransferNotOwner();

contract Errors {
    mapping(uint256 => address) private _owners;

    function transferOnwer1(uint tokenId, address newOwner) public {
        if (_owners[tokenId] != msg.sender) {
            revert TransferNotOwner();
        }

        _owners[tokenId] = newOwner;
    }

    function transferOnwer2(uint256 tokenId, address newOwner) public {
        require(_owners[tokenId] == msg.sender, "Transfer Not Owner");
        _owners[tokenId] = newOwner;
    }

    function transferOnwer3(uint256 tokenId, address newOwner) public {
        assert(_owners[tokenId] == msg.sender);
        _owners[tokenId] = newOwner;
    }
}
