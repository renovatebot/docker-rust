# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.61.0

FROM renovate/buildpack:6@sha256:14f0386d5a576d5bdca4f53dfa2553b99485de882ca7213484f50b54e3e2d7de

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
