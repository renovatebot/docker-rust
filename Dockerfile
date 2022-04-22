# renovate: datasource=docker depName=rust versioning=docker
ARG RUST_VERSION=1.60.0

FROM renovate/buildpack:6@sha256:2121883488725eb2fc90b9c2886b2a7e21d27054c4ee6f671667b9a029b3722d

ARG RUST_VERSION
RUN install-tool rust

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-rust" \
      org.opencontainers.image.version="${RUST_VERSION}"

USER 1000
