# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.50.0

FROM renovate/buildpack:4-rust@sha256:3aa37a501148ee79f740f82986bed3277aa8d88407da1dcf201be1f3fa488e07

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
