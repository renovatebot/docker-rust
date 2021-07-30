# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.54.0

FROM renovate/buildpack:5-rust@sha256:25f1045ddbd92f73b12fec690cf72d37c66ef1d6ee5588f26f3df62fa8ff38fc

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
