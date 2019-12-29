const Violet = artifacts.require("Violet");
module.exports = function(deployer) {
  deployer.deploy(Violet, 1000000);
};
