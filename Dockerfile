# Dockerfile for Next.js app with NGINX

# Use the official Node.js base image
FROM node:20 AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY ./frontend/package*.json ./

# Install dependencies
RUN npm install

# Copy the app files
COPY ./frontend .

# Build the Next.js app
RUN npm run build

# Use a lightweight NGINX image
FROM nginx:alpine

# Copy the built Next.js app from the previous stage
COPY --from=build /app/out /usr/share/nginx/html

# Copy your custom NGINX configuration (if needed)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
