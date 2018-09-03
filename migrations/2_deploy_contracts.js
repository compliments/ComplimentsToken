var Compliments = artifacts.require("./Compliments.sol");

module.exports = function(deployer) {
  deployer.deploy(Compliments);
};
