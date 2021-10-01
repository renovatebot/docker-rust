# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.55.0

FROM renovate/buildpack:5-rust@sha256:17ee40d2237112d8e2b295aa6d89cc9d9c61889faccff26ed3493de7e0faea29

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
