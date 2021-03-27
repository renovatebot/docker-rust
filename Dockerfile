# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.51.0

FROM renovate/buildpack:4-rust@sha256:6c31e679d749c2e0c089377f2d651647f3b167052d868a661cd29c315025797a

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
