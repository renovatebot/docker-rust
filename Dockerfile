# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.0

FROM renovate/buildpack:6@sha256:0d8ca4d35654635dc370c76f8f5a3eed004291110a05153f37cd30942d51ad4e

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
