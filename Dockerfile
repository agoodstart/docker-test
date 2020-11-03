# Specify a base image
FROM node:alpine

# Start from the correct working directory
WORKDIR /usr/app

# Make sure correct files are present
COPY ./package.json ./

# install some dependencies
RUN npm install

COPY ./index.js ./

# Run command
CMD ["npm", "start"]