# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.53.0

FROM renovate/buildpack:5-rust@sha256:0b1d18035cdd654f49f49bc8f1435d0e041071438b1f87d2c3ffe6177f2570e7

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
