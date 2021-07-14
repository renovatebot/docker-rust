# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.53.0

FROM renovate/buildpack:5-rust@sha256:1564c8baa9c2d4c0737675b78401742e89ab6ab05d04674c82668e6c65e8ee79

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
