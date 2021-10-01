# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.55.0

FROM renovate/buildpack:5-rust@sha256:bdd7190b9e26995db69e7a1936135cb49f4775b90aebe840a4043635ce485e82

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
