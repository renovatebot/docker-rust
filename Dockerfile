# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.55.0

FROM renovate/buildpack:5@sha256:06831d3732e8d66580f5da09a849194517e6497a5862511f11103a097dad4c5f

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
