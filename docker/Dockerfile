FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# Note: texlive-plain-generic necessary in ubuntu:20.04 because of
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=921297

RUN apt-get update && apt-get install -y -q --no-install-recommends \
        apt-utils \
        ca-certificates \
        curl \
        wget \
        git \
        texlive-latex-extra \
        texlive-plain-generic \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*
