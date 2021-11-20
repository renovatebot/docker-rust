# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.56.1

FROM renovate/buildpack:5@sha256:100fc8f4d6b25ffeadab4eff7fbc9adfdb61b84ed6e5d9199290e02e9ac49c8e

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
