# Use an official Node.js runtime as the base image
FROM node:16

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of your application's source code to the working directory
COPY . .

# Expose a port for your application to listen on (replace 3000 with your app's port)
EXPOSE 3000

# Define the command to run your Node.js application
CMD ["npm", "start"]
