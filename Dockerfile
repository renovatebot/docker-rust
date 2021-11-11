# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.56.1

FROM renovate/buildpack:5@sha256:73ebcce84f33d61a25cdd83de4ec448f9fcd37a8cefc38148b51757545b02dcd

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
