---
title: "Rivanna Notes"
author: ""
date: "January 27, 2022"
output: 
  pdf_document
fontsize: 12pt
---

### What is Rivanna

- https://www.rc.virginia.edu/userinfo/rivanna/overview/

Rivanna is the High Performance Computing (HPC) cluster sponsored by University of Virginia's Research Computing department.
Rivanna is composed 575 nodes which spans 20,476 cores and 8PB of different types of storage.


### Rivanna Hardware

The Rivanna HPC is composed of

* GPUs: K80, P100, V100, and RTX2080

TODO: Validate this 

While there are a variety of GPUs, specific selection appears to be limited to slurm jobs, where you can provide a specific implementation  
https://www.rc.virginia.edu/userinfo/rivanna/overview/#gpu-partition

#### Regarding GPU Usage

By default, Rivanna does not allocate GPU cores when creating an instance.
Instead, you 

### Rivanna Software

#### Modules

https://www.rc.virginia.edu/userinfo/rivanna/software/modules/

Rivanna's default mechanism of software configuration management is performed by using [lua modules](https://lmod.readthedocs.io/en/latest/index.html), also known as lmods just modules.
To activate additional software you must load a module into your environment.
This is typically done by launching a command prompt and running `module load <modulename>/<moduleversion>...`.
You can chain as many environments together as you want, but they will be loaded in the order presented on the command line.

Lmods offers some form of a solution engine for creating a configured environment, but it tends to lean on the user to figure out dependencies.
As such, you may need to load more than just the module you're interested in.

To list available modules use

```
$ module available
```

To list aproximately the python modules use

```
$ module available py
```

It will return all modules that have py in it. Blease chose those that look like python modules.

To probe for deep learnig modules, use  something similar to

```
$ module available cuda tesorflow pytorch mxnet nvidia
```



### Python Details

Rivanna has two channels of python software and their named modules

* Anaconda (`anaconda`)
  * 2019.10-py2.7
  * 2020.11-py3.8
* CPython (`python`)
  * 2.7.16
  * 3.6.6
  * 3.6.8
  * 3.7.7
  * 3.8.8 

Additionally, there are special supported versions of python frameworks that extend beyond the normal modules.
These include

* Pytorch (`pytorch`)
  * 1.8.1
  * 1.10.0
* Tensorflow (`tensorflow`)
  * 1.12.0-py36
  * 2.1.0-py37
  * 2.4.1
  * 2.7.0

#### Containers

https://www.rc.virginia.edu/userinfo/rivanna/software/containers/

Provided as a lmod, Rivanna can support the execution of singularity containers (sif) on the cluster.
These containers have [GPU passthrough](https://www.rc.virginia.edu/userinfo/rivanna/software/containers/#running-gpu-images) using NVidia drivers (`singularity <cmd> --nv <imagefile> <args>`).

When working non-interactively, to leverage the GPUs, it appears that we'll have to create a [SLURM job](https://www.rc.virginia.edu/userinfo/rivanna/slurm/#gpu-intensive-computation).
A key configuration option is `--gres=gpu:p100:2`, where the p100 is the graphics card you wish to leverage as part of your allocation, and 2 is the number of devices to include (so this would provide 7168 Cuda cores from two Nvidia P100 cards).

### Custom Version of TensorFlow

https://www.rc.virginia.edu/userinfo/rivanna/software/tensorflow/

### Gregors notes:

To load python 3.8 we can say

```
module load anaconda/2020.11-py3.8
```

### Gregors 3.10.0

```
$ module load anaconda
$ conda create -n py3.10 python=3.10
$ source activate py3.10
$ python -V
Python 3.10.0
```

### Gregors Conda Dislike

Rivanna unfortunatley uses conda for accessing various versions of Python. However conda is known to be often behind the state of the art not for ays, but for month's or even a semester.

A good example is the availability of the python compiler version. While the current version is 3.10.2, conda only supports 3.10.1 as of February 1st.
Obviously there is a reason why python.org updates to 3.10.2 ;-) conda is much more conservative and laks behind. For that reason I ususally use pythoon.org. I aso noticed that on some systems where you compile python natively it runs faster once you switch on the optimizations for that architecture.

Although we could compile python for rivanna in our local directory, we will not do this at this time and just use the conda version of python that most suites our code. We assume this will be 3.10.0.

We know that python 3.8 has bugs and limitations and should not be used. However we may not have another choice if we use the installed tensorflow tool kit on rivanna.
