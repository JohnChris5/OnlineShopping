##FROM nginx
#RUN apt update -y
#COPY index.html /var/www/html
#CMD ["nginx", "-g", "daemon off;"] 
# Use the official Nginx image
FROM nginx:latest

# Copy your application files to the Nginx document root
COPY ./build /usr/share/nginx/html

# Optionally, replace the default Nginx configuration with your own
COPY nginx.conf /etc/nginx/nginx.conf

