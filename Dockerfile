#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.43.1

FROM renovate/buildpack:2-rust@sha256:5fcd2651587d01003e6088ad53d06358f8fb5a953be1182d0ff9bbc7629f6f90

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-rust-${FLAVOR}

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
