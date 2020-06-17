#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.44.0

FROM renovate/buildpack:2-rust@sha256:189a7bd07a652f8460cfd7239f659ea9384e57669a5e189e4d0f8d284961be9b

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-rust${FLAVOR}

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
