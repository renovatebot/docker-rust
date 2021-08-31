# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.54.0

FROM renovate/buildpack:5-rust@sha256:0c98768e9435e6f89a9cc2cc1ad5d6e40dd7e6139b53adf9bba8bdb1c3993c29

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
