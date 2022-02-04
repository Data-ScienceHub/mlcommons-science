# Rivanna A100

Rivanna will have 8 nodes available to us, but they are not yet in service.

Instead we will be using the two existing nodes which are shared with other users

Rivanna uses the SLURM job scheduler for allocating submitted jobs.  Jobs are charged SUs from an allocation.  The Rivanna compute allocation we use is named

* `bii_dsc`

and it currently contains 100,000 SUs.  If the balance runs low, more SUs can be requested via the Standard Allocation Renewal form here:  `https://www.rc.virginia.edu/userinfo/rivanna/allocations/`. Due to the limitation we encourage you to plan things ahead and try to avoid unnecessary runs.
 
General instructions for submitting SLURM jobs is located at

* https://www.rc.virginia.edu/userinfo/rivanna/slurm/

To request the job be submitted to the gpu partition, you use the option

`-p gpu'

The A100 GPUs are a requestable resource. To request them, you would add the gres option with the number of A100 GPUs requested (1 through 8 GPUs), for example to request 2 A100 GPUs,

`--gres=gpu:a100:2`. 
 
If you are using a SLURM script to submit the job, rather than an interactive job, the options would appear as follows.  Your script will need to specify other options such as the allocation to charge as seen in the sample scripts shown in the above URL:

```
#SBATCH -p gpu
#SBATCH --gres=gpu:a100:2
#SBATCH -A bii_dsc
```

In many cases a slurm job is desired, as interactive jobs may waste SUs and we are charged by you keeing the A100 idle.

Research Computing also offers some interactive apps such as JupyterLab, RStudio, CodeServer, Blender, Mathematica via our Open OnDemand portal at:

* <https://rivanna-portal.hpc.virginia.edu>

To request the use of the A100s via Open OnDemand, first log in to the Open OnDemand portal, select the desired interactive app.  You will be presented with a form to complete.  Currently, you would

* select `gpu` for Rivanna partition,
* select `NVIDIA A100` from the `Optional: GPU type for GPU partition` pulldown menu
  and enter the number of desired GPUs from the `Optional: Number of GPUs`.  Once you’ve completed the form, click the `Launch` button and your session will be launched.  The session will start once the resources are available.
 
