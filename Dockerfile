# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.59.0

FROM renovate/buildpack:6@sha256:e115a3a99a368315362f15c8f1eb8a19b11ee7267e9cfe25c4933f5bbe43ebd3

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
