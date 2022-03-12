// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

interface IStorage {
    function store(uint256) external;
    // function retrieve() external view returns(uint256);

}



contract call_storage {
    address public storageAddr = 0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47;

    IStorage storage_proxy;

    function get_now() public view returns (uint256) {
        return block.timestamp;
    }

    function store(uint256 num) public {
        storage_proxy = IStorage(storageAddr);
        storage_proxy.store(num);
    }




}