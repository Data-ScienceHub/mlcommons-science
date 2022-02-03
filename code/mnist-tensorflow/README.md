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

echo "Rivanna A"
time singularity run --nv /scratch/$USER/rivanna/tensorflow-2.7.0.sif mnist.py
```

## Benchmarks

benchmarks may not be accurate, real time is what we probably want to focus on

| Where        	  | real/s    | user/s    | sys/s     |
| Gregors machine | 0m11.534s | 0m13.914s | 0m05.186  |
| Fox DGX         | 0m19.987s | 5m12.991s | 0m49.266  |
| Rivanna A    	  | 1m11.535s | 1m00.780s | 0m10.352  |

