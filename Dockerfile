# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.57.0

FROM renovate/buildpack:5@sha256:133a7bb0d8b622bfb9c4651de16c29ce05631ada1436988ed2a3bea78b37eb63

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
