# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.59.0

FROM renovate/buildpack:6@sha256:33fd07dbab9b62e84eb346255d8a0f9b47aede116cc437adb7c19ca577896957

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
