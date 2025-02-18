# Use official Node.js image from the Docker hub
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]

