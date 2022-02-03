# Rivanna

## Rivanna singuarity container

```
module load singularity
module avail tensorflow

mkdir -p /scratch/$USER/rivann
cd /scratch/$USER/rivanna

export C=$CONTAINERDIR
export U=$USER

cp $C/tensorflow-2.7.0.sif /scratch/$U/rivanna/
wget https://raw.githubusercontent.com/Data-ScienceHub/mlcommons-science/main/code/mnist-tensorflow/mnist.py
wget https://raw.githubusercontent.com/Data-ScienceHub/mlcommons-science/main/code/mnist-tensorflow/mnist-rivanna.slurm

echo "Rivanna Frontend"
time singularity run --nv /scratch/$USER/rivanna/tensorflow-2.7.0.sif mnist.py
```

## Benchmarks

benchmarks may not be accurate, real time is what we probably want to focus on

| Where        	    | real      | user      | sys        | Driver      | CUDA | GPU | 
| ----------------- | --------- | --------- | ---------- | ----------- | ---- | --- |
| Gregors machine   | 0m11.534s | 0m13.914s | 0m05.186s  | 510.47.03   | 11.6 | Gigabyte RTX3070 TI
| Fox DGX           | 0m19.987s | 5m12.991s | 0m49.266s  | 450.142.00  | 11.0 | NVIDIA A100 80GB
| Rivanna A100      | 0m29.263s | 0m14.585s | 0m7.399ss  | 470.82.01   | 11.4 | NVIDIA A100-SXM4-40GB
| MacBook Pro       | 0m31.01s  | 0m25.26s  | 130%       | N/A         | N/A | M1 Max 66GB
| Rivanna Frontend  | 1m11.535s | 1m00.780s | 0m10.352s  | N/A         | N/A  |
