module.exports = {
  preset: "ts-jest",
  reporters: ["default"],
  roots: ["<rootDir>/src"],
  transform: {
    "^.+\\.tsx?$": "ts-jest"
  }
};
