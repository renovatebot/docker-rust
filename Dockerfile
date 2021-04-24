# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.51.0

FROM renovate/buildpack:5-rust@sha256:ab4650b51b1e19ab6b6684a54ec8f433616c003fff0bd239250b099bbff6b290

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
