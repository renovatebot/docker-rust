# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.55.0

FROM renovate/buildpack:5-rust@sha256:9b580fe9c48c079fb1b40f2a9ecf04a8c592fb5ffb84e4b49b30e394004a3839

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
