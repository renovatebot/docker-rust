# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.51.0

FROM renovate/buildpack:5-rust@sha256:610bb5e3f570174b05e2c685797f2b15f6199c8c49bf1ce3a35a03c6891a9166

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
