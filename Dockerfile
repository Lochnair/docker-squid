FROM alpine:3.4
MAINTAINER Lochnair <lochnair@care.army>
LABEL Description="Docker image for Squid based on the offical Alpine Linux image (3.4)"

# Environment variables
ENV

# Install Squid
RUN apk add \
    --no-cache \
    --update \
    bash \
    ca-certificates \
    squid

# Update certificate authorities
RUN update-ca-certificates

ENTRYPOINT ["bash"]
