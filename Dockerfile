# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.64.0

FROM renovate/buildpack:6@sha256:c831b621e16266121d75c4aaf2d53827b86f9f9c77b0c6004716de5c1b292737

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
