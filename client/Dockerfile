# Use an official Node.js runtime as the base image
FROM node:16.14-alpine

# Set the working directory in the container
WORKDIR /app-frontend

# Copy the package.json and package-lock.json (if present)
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .


# Expose the port your frontend application will run on (if applicable)
EXPOSE 80

# Define the command to start your frontend application (adjust as needed)
CMD ["npm", "start"]
