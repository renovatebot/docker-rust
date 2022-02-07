# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.58.1

FROM renovate/buildpack:6@sha256:fa5ad9fcfbdf0f1833d53f6a70986658fb8083d5465058ed0eb75d30ad5e97b6

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
