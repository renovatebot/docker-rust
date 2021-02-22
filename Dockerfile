# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.50.0

FROM renovate/buildpack:4-rust@sha256:56aff39493eec9b88af79246e8269ead1b44aea76238ab972e7ab7a4e610df00

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
