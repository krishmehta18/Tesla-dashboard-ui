# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy files
COPY package.json ./
COPY index.html ./
COPY styles.css ./
COPY scripts.js ./

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Run the app
CMD [ "npx", "http-server", "-p", "3000" ]
