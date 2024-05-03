# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Build your ReactJS project
RUN npm run build

# Expose port 80
EXPOSE 80

# Command to run your application
CMD ["npm", "start"]
