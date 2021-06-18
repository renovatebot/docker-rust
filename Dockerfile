# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.53.0

FROM renovate/buildpack:5-rust@sha256:fd7ea83c4e81a9b528a8d81256053186f1443723c0a5c587fe2d5ab1b160e892

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
