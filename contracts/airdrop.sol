// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

import "@openzeppelin/contracts/access/Ownable.sol";

interface TransferToken {
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);
}

contract TokenAirDropBucket is Ownable {
    TransferToken private _erc20Token;

    constructor(TransferToken tokenAddress) {
        require(
            address(tokenAddress) != address(0),
            "Token Address cannot be address 0"
        );
        _erc20Token = tokenAddress;
    }

    function TransferAirDrop(
        address[] calldata _allocationAdd,
        uint256[] calldata _amount
    ) external onlyOwner {
        require(_allocationAdd.length == _amount.length);

        for (uint256 i = 0; i < _allocationAdd.length; ++i) {
            _TransferAirDrop(_allocationAdd[i], _amount[i]);
        }
    }

    function _TransferAirDrop(address allocationAdd, uint256 amount) internal {
        require(allocationAdd != address(0), "Invalid allocation address");
        require(amount >= 0, "Invalid allocation amount");
        require(
            _erc20Token.transfer(allocationAdd, amount),
            "Token transfer failed!"
        );
    }
}
