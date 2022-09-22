# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.64.0

FROM renovate/buildpack:6@sha256:dcdce728a6d62e679f46e02c23e415a7b10441505a5b2e2ab9d71acfe38ee44f

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
