//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0 <0.8.0;

import '@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol';

contract Skt is ERC20PresetMinterPauser {
    constructor(uint256 initialSupply) ERC20PresetMinterPauser('Sukhavati Network Token', 'SKT') {
        _setupDecimals(8);
        _mint(_msgSender(), initialSupply);
    }
}
