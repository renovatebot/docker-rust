# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.63.0

FROM renovate/buildpack:6@sha256:85a5ec9eee656b644e14ee90df100cb2966158476d510fe8f22d7d706a89544a

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
