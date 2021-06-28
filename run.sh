#! /bin/bash

docker build . -t kube-image:0.1
docker run --rm --privileged kube-image:0.1
