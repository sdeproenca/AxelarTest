async function main() {
  // Create ContractFactory
  const EgToken = await ethers.getContractFactory("EgToken");
  // Deploy Contract
  const ready = await EgToken.deploy();
  // Wait for the Contract to be deployed and console log the good news!
  await ready.deployed();
  console.log("Contract deployed to address:", ready.address);
  }
  
  // Catch errors and console log the bad news :(
  main().then(() => process.exit(0)).catch((error) => {
  console.error("Error:", error);
  process.exit(1);
  });
