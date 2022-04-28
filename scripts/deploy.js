async function main() {
  // ethers is referenced from the import at hardhat.config
  // HelloWorld is a factory function for creating contract instances
  const HelloWorld = await ethers.getContractFactory("HelloWorld");

  const hello_world = await HelloWorld.deploy("Hello World");
  console.log(`Smart contract deployed to address: ${hello_world.address}`);
}

const callMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (e) {
    console.error(e);
    process.exit(1);
  }
};

callMain();
