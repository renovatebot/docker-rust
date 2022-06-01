# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.61.0

FROM renovate/buildpack:6@sha256:fd3ecf7756539161dcc747890f7485c03284abed0d5b991b02926266f1f8e766

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
