# MLCube Guide

First you need to install a runner for MLCube.
The MLCube supports many backend runners and should run on each of them equally.

As our target ranges from laptop to HPC clusters, we will choose singularity.

```bash
# If using pyenv
pyenv local 3.10.2
python -m venv --prompt mlcube venv
source venv/bin/activate
python -m pip install mlcube-singularity

# If using Conda
conda create -n mlcube -c conda-forge python=3.10.2
conda activate mlcube
python -m pip install mlcube-singularity
```

Once run, you can now list what runners mlcube has registered with

```bash
mlcube config --get runners
```

```bash
git clone https://github.com/mlcommons/mlcube_examples.git && cd ./mlcube_examples/hello_world

mlcube run --mlcube=. --task=hello --platform=docker   # No output expected.
mlcube run --mlcube=. --task=bye --platform=docker     # No output expected.
cat ./workspace/chats/chat_with_alice.txt              # You should some log lines in this file.
cat 
```
