# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.53.0

FROM renovate/buildpack:5-rust@sha256:6499c38c681d203d3dbc0c8ccd87b8597c37313b4c270dcdb2d35ba6f50c986f

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
