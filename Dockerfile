FROM alpine:3.12.0

# Install OpenJDK 11
RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

# Install Nginx
RUN apk --no-cache add nginx

# Nginx configuration must be constructed by the application, create location for Nginx PID and static files
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf && mkdir -p /run/nginx /usr/share/nginx/html

# Expose port 80
EXPOSE 80
