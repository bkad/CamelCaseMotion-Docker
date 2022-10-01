FROM ubuntu:22.04

WORKDIR root

RUN apt-get update
RUN apt-get install -y wget git
RUN wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
RUN apt-get install ./nvim-linux64.deb
COPY samples .
RUN mkdir .config/
COPY config .config/nvim
RUN git clone --depth 1 https://github.com/bkad/CamelCaseMotion .config/nvim/pack/foobar/start/CamelCaseMotion

ENTRYPOINT /bin/bash
