# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.59.0

FROM renovate/buildpack:6@sha256:18f8ab9f4a584380be2d02d45c7ae08fed6343f08b42548843d6f55401e13e42

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
