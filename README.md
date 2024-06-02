# fuzig
A simple memory-backed Filesystem in Userspace (FUSE).

# Testing
Build a Docker image:
```bash
$ docker build -t fuzig .
```

Run tests inside a container:
```bash
$ docker run --rm --privileged -it fuzig
```

# References
- https://richiejp.com/zig-fuse-one
- https://github.com/libfuse/libfuse
