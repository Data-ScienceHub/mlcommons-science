#!/usr/bin/env bash
#SBATCH -J mnist
#SBATCH -o mnist-%A.out
#SBATCH -e mnist-%A.err
#SBATCH -p gpu
#SBATCH --gres=gpu:1
#SBATCH -c 1
#SBATCH -t 00:01:00
#SBATCH -A mygroup

module purge
module load singularity

# Assuming that the container has been copied to the user's /scratch directory
workdir=/scratch/$USER/rivanna
time singularity run --nv $workdir/tensorflow-2.7.0.sif mnist.py

