# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.55.0

FROM renovate/buildpack:5-rust@sha256:f2dc5347f4ec35eecd482bfbb733115ffa2c6accfd84e3dbd4bf5023b92c88a6

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
