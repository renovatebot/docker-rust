# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.60.0

FROM renovate/buildpack:6@sha256:5acca3e8ea4db8a58b9d44cfa260f6d28478ed52f9ad664a705b6aa0a0b42967

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
