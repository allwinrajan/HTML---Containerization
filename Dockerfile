# Use official nginx image as base
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy index.html into nginx's default directory
COPY index.html .

# Expose port 80 for external access
EXPOSE 80

# Run nginx on port 8000
CMD ["nginx", "-g", "daemon off;"]
