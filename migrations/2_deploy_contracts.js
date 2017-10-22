var ClientDB = artifacts.require("./ClientDB.sol");

module.exports = function(deployer) {
  deployer.deploy(ClientDB);
};
