# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.53.0

FROM renovate/buildpack:5-rust@sha256:99dba18b00d878fefd056d0ed1c1059e9fb834386722360fab02adee0d0e7e9b

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
