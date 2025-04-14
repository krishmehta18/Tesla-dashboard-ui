# Use Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN npm install

# Build the UI
RUN npm run build

# Expose the correct port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
