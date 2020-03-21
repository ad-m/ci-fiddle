module.exports = {
  '*.{ts,tsx,js,jsx,json}': [
    'npm run format-file:default',
    'npm run lint',
    'git add',
  ],
  '*.{js,jsx,vue,ts,css,less,scss,html,htm,json,md,markdown,yml,yaml}': [
    'npm run format-file:default',
    'git add',
  ],
};
