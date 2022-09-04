# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.63.0

FROM renovate/buildpack:6@sha256:cdfd48b4925802ed83900f2eb94fd22509e2e9c634979acf71934bb176be0aad

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
