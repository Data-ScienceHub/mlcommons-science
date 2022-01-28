#!/bin/bash

sudo apt-get update && \
    sudo apt-get install -y \
        python3 \
        python3-pip \
        python3-venv \
        python-is-python3

python -m venv --prompt mlcube venv3
source ./venv3/bin/activate

python -m pip install -U pip
python -m pip install mlcube mlcube-singularity