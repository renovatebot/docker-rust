# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.60.0

FROM renovate/buildpack:6@sha256:353a7ca6806ae6aaf4efc2f15e80b07218261eb5198dcaf0816e1c56ac5b3045

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
