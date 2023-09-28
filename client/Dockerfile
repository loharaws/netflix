# Use an official Node.js runtime as the base image
FROM node:16.14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if present)
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port your Node.js application will run on
EXPOSE 80

# Define the command to start your Node.js application
CMD ["npm", "start"]
