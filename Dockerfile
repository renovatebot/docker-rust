# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.0

FROM renovate/buildpack:6@sha256:7bf16b76f1708fe26c557912c900b772febc4b50e3294d54c8bc37ccb60463c4

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
