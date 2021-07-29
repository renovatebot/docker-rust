# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.54.0

FROM renovate/buildpack:5-rust@sha256:103967d8ce271e9b539d464b0c3bb5e313f276b4dee3279b6bdc808909665eb0

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
