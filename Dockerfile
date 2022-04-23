# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.60.0

FROM renovate/buildpack:6@sha256:8ffd446a87786b9ea68c5c4058ee47eec3fd8f22cb74232f7541f722d04d1bd2

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
