# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.52.1

FROM renovate/buildpack:5-rust@sha256:b476169e9928505e390317c40b106217bb43d21ea1cb5e56807a5c850e1a1a19

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
