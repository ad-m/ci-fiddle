# Use the latest version of Node.js
#
# You may prefer the full image:
# FROM node
#
# or even an alpine image (a smaller, faster, less-feature-complete image):
# FROM node:alpine
#
# You can specify a version:
# FROM node:10-slim
FROM node:slim

COPY entrypoint.sh /entrypoint.sh

# Run `node /entrypoint.js`
ENTRYPOINT ["/entrypoint.sh"]
