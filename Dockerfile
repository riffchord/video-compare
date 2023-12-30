# Use the Nginx image as a parent image
FROM nginx:alpine

# Install Git
RUN apk update && apk add git

# Clone your repository into the Nginx server directory
RUN git clone https://github.com/riffchord/video-compare.git /usr/share/nginx/html

# Optional: If you have a custom Nginx configuration
# COPY ./your-nginx.conf /etc/nginx/conf.d/default.conf