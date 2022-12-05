const { ethers } = require("hardhat");

async function main() {
  const contract = await ethers.getContractFactory("Whitelist");

  const deployedcntract = await contract.deploy(10);

  await deployedcntract.deployed();

  console.log("Whitelist contract address: ", deployedcntract.address);
}

main()
  .then(() => process.exit(0))
  .catch((err) => {
    console.log(err);
    process.exit(1);
  });


// O/P: Whitelist contract address:   0x078Be6e1868544592933B92985787bbf80681184
