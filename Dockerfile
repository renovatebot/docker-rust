# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.60.0

FROM renovate/buildpack:6@sha256:2f71076c04e6835621d4775827c024d7a219f65a957cc38a5dcb7305f0bf0bad

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
