# Use official Node.js image as a base
FROM node:18-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files first to leverage Docker cache
COPY package*.json /app/

# Install dependencies for the Next.js app
RUN npm install

# Copy the rest of the application files to the container
COPY . /app/

# Expose the port that Next.js will run on
EXPOSE 3000

# Command to build and run the Next.js app
CMD ["npm", "run", "dev"]
