FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        build-essential \
        clang clang-format \
        pkg-config \
        cmake \
        libgtest-dev && \
    apt-get clean

RUN cd /usr/src/googletest && \
    cmake . && \
    cmake --build . --target install
