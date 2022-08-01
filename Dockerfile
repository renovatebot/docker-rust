# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.1

FROM renovate/buildpack:6@sha256:96b9ec488f01f4f0dafb733601415abdea6b22e8dcac8e6a5cb14706a6e75a51

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
