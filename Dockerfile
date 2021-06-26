from ubuntu

RUN apt-get update

RUN apt-get install -y wget xz-utils

COPY ./build.sh /kube-image/

USER root

ENTRYPOINT ["/kube-image/build.sh"]
