FROM alpine:latest

RUN apk add --no-cache \
    fuse3 fuse3-dev \
    zig

WORKDIR /app

COPY . .

RUN zig build

CMD ["zig", "build", "test"]
