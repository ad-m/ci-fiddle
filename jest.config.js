module.exports = {
  preset: "ts-jest",
  reporters: ["default", "jest-junit"],
  roots: ["<rootDir>/src"],
  transform: {
    "^.+\\.tsx?$": "ts-jest"
  }
};
