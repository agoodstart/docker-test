# Specify a base image
FROM node:alpine

# Start from the correct working directory
WORKDIR /usr/app

# Make sure correct files are present
COPY ./ ./

# install some dependencies
RUN npm install

# Run command
CMD ["npm", "start"]