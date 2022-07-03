# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.62.0

FROM renovate/buildpack:6@sha256:125859ce067bc29523130c09470cb9664368e8103f65355236a04b1757c9af23

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
