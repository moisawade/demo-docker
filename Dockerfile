# Use official Nginx image as base (for serving static content)
FROM nginx:alpine

# Copy our app files into the default Nginx document root (/usr/share/nginx/html)
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY logo.jpeg /usr/share/nginx/html/

# Expose port 80 for HTTP access (Nginx listens on port 80 by default)
EXPOSE 80

# Run command when container starts up (not needed here since Nginx runs automatically)
CMD ["nginx", "-g", "daemon off;"]