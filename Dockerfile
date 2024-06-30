# Build fuzig binary via Zig toolchain
FROM alpine as fuzig

RUN apk add --no-cache \
    fuse3 fuse3-dev \
    zig

WORKDIR /app
COPY . .

RUN zig build

# Build csi driver via Rust toolchain
FROM rust:1.79-alpine as csi

RUN apk add --no-cache \
    musl-dev \
    protoc protobuf-dev

WORKDIR /app
COPY csi .

RUN cargo install --path .

# Final image with fuzig and csi driver
FROM alpine
COPY --from=fuzig /app/zig-out/bin/fuzig /fuzig/fuzig
COPY --from=csi /usr/local/cargo/bin/fuzig-csi /fuzig/fuzig-csi
ENTRYPOINT ["/fuzig/fuzig-csi"]
