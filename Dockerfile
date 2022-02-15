# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.58.1

FROM renovate/buildpack:6@sha256:34d72ad1fa883dc85c48cabc9cd621bb1ec3c9cdaa5fbfa458c1b0fa89530b74

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
