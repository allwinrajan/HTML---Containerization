# Use official nginx image as base
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy index.html into nginx's default directory
COPY index.html .

# Expose port 8000 for external access
EXPOSE 8000

# Run nginx on port 8000
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]
