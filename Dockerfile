# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.58.1

FROM renovate/buildpack:6@sha256:3f55c68ce0b2ced7cad85eff7d421abf54794c2578bcaefd2323327cf34f2d55

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
