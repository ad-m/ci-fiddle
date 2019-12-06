module.exports = {
  scripts: {
    prerelease:
      'if [ "$(git branch --show-current)" != "aster" ]; then exit 2; fi',
  },
};
