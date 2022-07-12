# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.0

FROM renovate/buildpack:6@sha256:c70295407ca1c9c4e43d252276605e834ca062773d1277e79d341ef2d02d017e

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
