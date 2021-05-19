# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.52.1

FROM renovate/buildpack:5-rust@sha256:c68c2b83cf56715c5370e3a645db41fe42475aba5a54535a32f7dafd4f9017a6

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
