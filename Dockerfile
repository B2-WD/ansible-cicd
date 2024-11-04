FROM node:20-alpine

LABEL maintainer="Soe Thura<thixpin@gmail.com>"
LABEL version="1.0"
LABEL description="This is a Dockerfile for Node.js application"

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

# Build app
RUN npm run build

# Expose port and start application
EXPOSE 3000
CMD ["npm", "start"]

# Insturctions to build and run the Docker image
# docker build -t node-app .
# docker run -p 3001:3000 --restart=always --name node-app -d node-app