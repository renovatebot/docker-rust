# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.50.0

FROM renovate/buildpack:4-rust@sha256:5668a052678ca6a39458e50775200404a1b5fb83b1b1cc9ff63e2dd1c3d600a5

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
