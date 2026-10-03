# Use Node.js version 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json into the working directory
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose port 3000 so the application can be accessed externally
EXPOSE 3000

# Start the application
CMD ["npm", "start"]