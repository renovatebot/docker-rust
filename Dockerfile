# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.52.0

FROM renovate/buildpack:5-rust@sha256:f1ea8d4b9039ae4006d1ec06e159626178d048399214a01322af784425c02ecf

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
