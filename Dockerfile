FROM alpine:3.4
MAINTAINER Lochnair <lochnair@care.army>
LABEL Description="Docker image for Squid based on the offical Alpine Linux image (3.4)"

# Install Squid
RUN apk add \
    --no-cache \
    --update \
    bash \
    ca-certificates \
    squid

# Update certificate authorities
RUN update-ca-certificates

# Define volumes
VOLUME /etc/squid
VOLUME /var/cache/squid
VOLUME /var/log/squid

# Add start script and make it executable
COPY start.sh /start.sh
RUN chmod +x /start.sh

USER squid

ENTRYPOINT ["/start.sh"]
