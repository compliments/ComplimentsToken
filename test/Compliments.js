var Compliments = artifacts.require("./Compliments.sol");

contract('Compliments', function(accounts) {

  it('sets the total supply upon deployment', function() {
    return Compliments.deployed().then(function(instance) {
      tokenInstance = instance;
      return tokenInstance.totalSupply();
    }).then(function(totalSupply) {
      assert.equal(totalSupply.toNumber(), 54000000, 'sets the total supply to 54000000');
    });
  });
})
