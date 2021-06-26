build
docker build . -t kube-image
run
docker run --privileged kube-image
