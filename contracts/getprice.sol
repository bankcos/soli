// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

interface ENS {
    function resolver(bytes32 node) external view returns (Resolver);
}

interface Resolver {
    function addr(bytes32 node) external view returns (address);
}

contract ENSConsumer {
    ENS ens;

    constructor(address ensaddr) {
        ens = ENS(ensaddr);
    }

    function resolve(bytes32 node) public view returns(address) {
        Resolver resolver = ens.resolver(node);
        return resolver.addr(node);
    }
}