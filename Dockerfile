# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.64.0

FROM renovate/buildpack:6@sha256:359d7d64a7abcf67de2e0ae60de5372ab6da5eee1dcbb52c5d93187e1fff3796

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
