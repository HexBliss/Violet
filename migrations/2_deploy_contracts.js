const VioletToken = artifacts.require("VioletToken");

module.exports = function(deployer) {
  deployer.deploy(VioletToken);
};
