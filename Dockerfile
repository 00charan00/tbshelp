# Use a specific Node.js version for consistency
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy only the package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port defined in the Vite config (default: 5173)
EXPOSE 5173

# Start the development server
CMD ["npm", "run", "dev"]
