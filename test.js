console.log("Running tests...");

const sum = (a, b) => a + b;

if (sum(2, 2) !== 4) {
  throw new Error("Test Failed!");
}

console.log("All tests passed ✅");