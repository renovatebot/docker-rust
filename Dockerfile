#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.45.0

FROM renovate/buildpack:2-rust@sha256:be5f91cef3b58f32b3b2e6218ead944603f031aff0ecf7e52d8fe3308dbc4b11

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-rust${FLAVOR}

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
