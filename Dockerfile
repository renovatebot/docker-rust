# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.63.0

FROM renovate/buildpack:6@sha256:52f013ab6229eafdb83e4d42f166817cb661071344202e700fe7df3be63c5843

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
