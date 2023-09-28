# Use an official Node.js runtime as the base image
FROM node:14 as build-stage

# Create and set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of your frontend application's source code to the working directory
COPY . .

# Build your frontend application (replace 'build' with the actual build script or command)
RUN npm run build

# Use a lightweight web server image for serving the application
FROM nginx:alpine

# Copy the built frontend files from the previous build stage
COPY --from=build-stage /app/build /usr/share/nginx/html

# Expose the default port used by the NGINX web server (usually 80)
EXPOSE 80

# Start the NGINX web server
CMD ["nginx", "-g", "daemon off;"]
