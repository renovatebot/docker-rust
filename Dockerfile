# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.54.0

FROM renovate/buildpack:5-rust@sha256:1126767c64e8b4a4387ad32985cb8f376aed34252b3e741229f9f1a3229ce8c8

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
