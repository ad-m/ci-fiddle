module.exports = {
  scripts: {
    prerelease:
      'if [ "$(git rev-parse --abbrev-ref HEAD)" != "master" ]; then exit 9; fi',
  },
};
