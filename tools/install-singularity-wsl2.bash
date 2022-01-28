#!/bin/bash

# This script assumes a semi-modern verison of Ubuntu
# was only tested on WSL2
# Also, this uses sudo in unsafe ways.  Run at your own risk!

SINGULARITY_VERSION="release-3.8"
GO_VERSION="1.17.6"
CPU_ARCH="amd64"
OS="linux"

GOPATH=/usr/local/golang

# Install dependencies per documentation
sudo apt-get update && \
sudo apt-get install -y \
   build-essential \
    libssl-dev \
    uuid-dev \
    libgpgme11-dev \
    squashfs-tools \
    libseccomp-dev \
    wget \
    pkg-config \
    git \
    cryptsetup

sudo rm -rf /usr/local/go/
wget https://dl.google.com/go/go${GO_VERSION}.${OS}-${CPU_ARCH}.tar.gz && \
sudo tar -C /usr/local -xzvf go${GO_VERSION}.${OS}-${CPU_ARCH}.tar.gz && \
rm go${GO_VERSION}.${OS}-${CPU_ARCH}.tar.gz 

export PATH=/usr/local/go/bin:$PATH
export GOPATH

# BUG:
# Not sure why, but the exeuction of mconfig doesn't like it when
# go is in a non-standard path; this link make everything work.
sudo ln -s /usr/local/go/bin/go /usr/bin/go
sudo mkdir -p ${GOPATH}/src/github.com/hpcng

(cd ${GOPATH}/src/github.com/hpcng && \
    [ ! -e singularity ] && sudo git clone --depth 1 --branch "${SINGULARITY_VERSION}" https://github.com/singularityware/singularity.git)

cd ${GOPATH}/src/github.com/hpcng/singularity && \
    echo $PATH && \
    sudo ./mconfig && \
    sudo make -C builddir && \
    sudo make install -C builddir