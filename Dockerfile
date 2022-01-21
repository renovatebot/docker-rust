# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.58.1

FROM renovate/buildpack:5@sha256:a21d804488fc6c06d421aba67a1c8793e9a5cb2e43ca8fa4557accbb10692917

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
