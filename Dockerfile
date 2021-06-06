# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.52.1

FROM renovate/buildpack:5-rust@sha256:cb5a3eb0857e50c3a151a100f31411783adaed6becd9001fd93130503e039a36

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
