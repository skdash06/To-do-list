# Use an official Nginx image as the base
FROM nginx:alpine

# Copy custom static files into the nginx default public directory
COPY . /usr/share/nginx/html

# Expose port 8008 (HTTP)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
