# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.59.0

FROM renovate/buildpack:6@sha256:810e591441c698bbab3047bf875b812c98b42a19a94b9f9651a5355e2a7462d3

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
