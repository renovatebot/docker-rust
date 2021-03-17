# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.50.0

FROM renovate/buildpack:4-rust@sha256:5b6a01a7728dd18e695801fb639df5d8852ce72f601469ad30d98d2fcee79c82

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
