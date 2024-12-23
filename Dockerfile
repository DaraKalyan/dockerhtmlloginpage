# Use a lightweight Nginx image as the base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the HTML file into the container
COPY index.html .

# Expose port 80 for HTTP
EXPOSE 8081

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
