# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.50.0

FROM renovate/buildpack:4-rust@sha256:926e6cfdb705f3ff4543d04685f3df246e2df61930c500cc247486c75c6ae5ad

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
