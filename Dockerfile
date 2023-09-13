# Use an official Nginx runtime as the base image
FROM nginx:latest

# Set the working directory to copy the website files
WORKDIR /usr/share/nginx/html

# Copy the static website files to the container
COPY public .

# Generate an htpasswd file with username and password
#RUN htpasswd -b -c /etc/nginx/.htpasswd username password
COPY htpasswd /etc/nginx/.htpasswd

# Copy the Nginx configuration file with htpasswd protection
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the default HTTP port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
