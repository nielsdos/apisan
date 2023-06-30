FROM ubuntu:18.04

RUN apt update
RUN apt install -y clang-6.0 clang++-6.0 libntirpc-dev git cmake make
RUN apt install -y libboost-dev libxml2-dev
RUN apt install -y python3-pip
RUN python3 -m pip install ply
RUN git clone https://github.com/nielsdos/apisan.git
WORKDIR /apisan
ENV CXX=clang++-6.0
ENV CC=clang-6.0
RUN bash ./setup.sh
