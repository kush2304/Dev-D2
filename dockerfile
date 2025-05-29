# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy app code
COPY app/ ./app/
COPY app/package*.json ./app/

# Set working dir inside app folder
WORKDIR /usr/src/app/app

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]

