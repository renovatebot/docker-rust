# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.1

FROM renovate/buildpack:6@sha256:72043b5318d6876dda202be77dd7025ad9305b347f1c275a4ed4b028774b2caf

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
