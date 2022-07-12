# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.0

FROM renovate/buildpack:6@sha256:cc4b8b2563509d5a2be93a9c67f1f3ad6dbb1c0d65eb03d55fd28036f025d527

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
