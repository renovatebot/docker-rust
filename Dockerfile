#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.48.0

FROM renovate/buildpack:2-rust@sha256:a2463624a6856cfdf3081138ea7567baaaa68d61ed9d1d6d388c3c0e6cf420d9

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-rust${FLAVOR}

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
