# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.64.0

FROM renovate/buildpack:6@sha256:f3b432fde6e52cfb851301df21f2b7e7268ffbcfc57484ed7cd89d2c67c450ca

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
