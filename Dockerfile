# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.58.1

FROM renovate/buildpack:6@sha256:4cb8ef72833ab7ab249b45f5ba1253cefec17222d9e9fc348015d9261f42cc9f

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
