# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.51.0

FROM renovate/buildpack:4-rust@sha256:e7843049a69c4e76bbad74482b72d56c65d59c07e23c2a25b05ffbdac7d29367

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
