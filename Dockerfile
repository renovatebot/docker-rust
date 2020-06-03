#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.43.1

FROM renovate/buildpack:2-rust@sha256:e5cfd10d9413db074761b62c544e265b219ee32c2b1416e83ccd91d1fec63e4f

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-rust-${FLAVOR}

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
