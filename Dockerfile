FROM ubuntu:18.04
LABEL Description="Build environment"

ENV HOME /root

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get -y --no-install-recommends install \
    build-essential \
    clang \
    cmake \
    gdb \
    libprotobuf-dev \
    libusb-1.0-0-dev \
    protobuf-compiler \
    libboost-dev \
    libboost-system-dev \
    libboost-log-dev \
    libboost-test-dev

#aasdk
#RUN wget --quiet \
#    --no-check-certificate \
#    https://github.com/f1xpl/aasdk/archive/refs/tags/v2.1.tar.gz && \
#    tar xzf ./v2.1.tar.gz && \
#    cd ./aasdk-2.1 && \
#    cmake -DCMAKE_BUILD_TYPE=Release && \
#    make && \
#    install -D -m755 ./lib/libaasdk.so /usr/lib/libaasdk.so && \
#    install -d /usr/include/aasdk_proto && \
#    install -D ./aasdk_proto/*.h /usr/include/aasdk_proto && \
#    cp -Rv ./include/f1x /usr/include/