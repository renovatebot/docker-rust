# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.51.0

FROM renovate/buildpack:4-rust@sha256:9a93ed7a0e121713faaa42f46a838645c9aa83f6e3e4540493c00ae744159db9

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
