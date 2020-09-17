#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.46.0

FROM renovate/buildpack:2-rust@sha256:1663cb324e9b339a4ff860424b18f0c2bf6fc6bdf33a817a3ac5a392706f9a64

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-rust${FLAVOR}

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
