# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.61.0

FROM renovate/buildpack:6@sha256:f70c53572abff13f18df4297cedbf42e9acedcaacb60d2316d3e34481e817648

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
