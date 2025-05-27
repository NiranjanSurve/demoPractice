# Use official nginx base image
FROM nginx:alpine

# Clear default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into nginx directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
