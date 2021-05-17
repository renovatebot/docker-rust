# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.52.1

FROM renovate/buildpack:5-rust@sha256:9d966acd2d297b73ea6c6cf311c481bd89da1a2e6c6d1207bab51b3ea4d3863d

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
