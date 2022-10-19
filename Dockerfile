# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.64.0

FROM renovate/buildpack:6@sha256:588d41e7c055fe63edb6bf43ec4bba579308ebb23b19c18b5a7b24a705a412d3

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
