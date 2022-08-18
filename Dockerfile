# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.63.0

FROM renovate/buildpack:6@sha256:151e4487cf364b65deca25932331a17078d1c22f7c7e239ef52d9bc555a8acae

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
