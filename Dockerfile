# Use Node.js version 14 as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy only the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the backend's port (5000)
EXPOSE 5000

# Start the backend server
CMD ["node", "index.js"]
