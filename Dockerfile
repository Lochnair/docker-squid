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

USER squid

ENTRYPOINT ["/start.sh"]
