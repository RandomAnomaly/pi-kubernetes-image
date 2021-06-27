from ubuntu

RUN apt-get update

RUN apt-get install -y wget xz-utils
RUN apt-get install -y petname
RUN apt-get install -y qemu-user-static

COPY ./build.sh /kube-image/

USER root

ENTRYPOINT ["/kube-image/build.sh"]
