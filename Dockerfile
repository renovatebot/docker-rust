# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.1

FROM renovate/buildpack:6@sha256:9f0608bf78644162699c8cd9749cb3a9de346184f6423ca25acacaa1da8d5737

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
