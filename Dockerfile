# renovate: datasource=docker versioning=docker
ARG RUST_VERSION=1.43.1

FROM renovate/2-rust@sha256:c63fa2a57fe3fbf0e6906e982ce6fe805e2d11b8b1e6aabbcda080719099adb7

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000