# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.1

FROM renovate/buildpack:6@sha256:f2f7e2e9f92b5294fbd94ea909f4725069eb59579e7512913e2bd4bf89ff2ec7

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
