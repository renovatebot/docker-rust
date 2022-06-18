# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.61.0

FROM renovate/buildpack:6@sha256:697c26af6bbd8c7f1f50d02e2c9e439643da1394d6c2fcbac98082a69ac4bcc2

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
