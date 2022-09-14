# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.63.0

FROM renovate/buildpack:6@sha256:999b1f547a36a8638e0e6646a1d06537b8a5c0a5575dcdc8adc54104b7ba1ea3

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
