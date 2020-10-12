FROM alpine:3.12.0

# Install OpenJDK 11
RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

# Install Nginx
RUN apk --no-cache add nginx nginx-mod-http-headers-more

# Nginx configuration must be constructed by the application, create location for Nginx PID, static files and certificates
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf && mkdir -p /run/nginx /usr/share/nginx/html /etc/ssl/nginx_vhosts/ /app

# Expose port 80 & 443
EXPOSE 80
EXPOSE 443

# Set workdir
WORKDIR /app
