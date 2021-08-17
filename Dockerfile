# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.54.0

FROM renovate/buildpack:5-rust@sha256:d79bc8daa0d607962775d5080d0e8f8641475bd8095d17a9c07d4d333933d5cd

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
