# fuzig
A simple memory-backed Filesystem in Userspace (FUSE).

## Testing the CSI driver on `minikube`
Build a Docker image for fuzig CSI driver with:
```bash
$ docker build -t fuzig .
```

Push Docker image into minikube:
```bash
$ minikube image load fuzig:latest --overwrite=true
```

Deploy the CSI driver:
```bash
$ kubectl apply -f ./csi/deploy/kubernetes/driver.yaml
```

Deploy sample app:
```bash
$ kubectl apply -f ./csi/examples/busybox-inline.yaml
```

## References
- https://richiejp.com/zig-fuse-one
- https://github.com/libfuse/libfuse
- https://kubernetes-csi.github.io/docs/
