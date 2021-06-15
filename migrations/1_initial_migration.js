const Skt = artifacts.require('./Skt.sol');

module.exports = async (deployer, network, accounts) => {


  await deployer.deploy(Skt, '61803398900000000');

};
