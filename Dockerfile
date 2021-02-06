#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.49.0

FROM renovate/buildpack:3-rust@sha256:5c7b5a8b38e0dd5b0ba1f4b51ee3173f3956a55483e1fd63b9c75e5180dca45f

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-rust${FLAVOR}

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
