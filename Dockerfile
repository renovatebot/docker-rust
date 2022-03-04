# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.59.0

FROM renovate/buildpack:6@sha256:65dd16c78a3ff0c4ca6b2f65eaa923556b9186a1acb78bd4691733ed22008e9b

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
