# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.61.0

FROM renovate/buildpack:6@sha256:da3f4cc112f0c1c2b378cca8982697445b8aaa29154a5334f8140e5302340ceb

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
