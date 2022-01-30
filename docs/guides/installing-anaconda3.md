This section is a partition of the Cloud Mesh community documentation located at: https://cloudmesh-community.github.io/pub/vonLaszewski-python.pdf.

### Install Python 3.10 via Anaconda or Miniconda

We are not recommending ether to use conda or anaconda. If you do so, it is
your responsibility to update the information in this section in regards to it.


Anaconda is a popular and large distribution of the python ecosystem frequently used by Data Scientists.
Unlike the other python installers, anaconda installs additional tools beyond what is normally considered part of python - such as the conda package management system and an opinionated set of preinstalled packages.
Some practitioners consider these additional package installs as bloat as it increases the installation footprint of python to include several third-party packages, which a user may not need.

Miniconda, in contrast installs only what is required to execute the conda packaging system, allowing users to build their own anaconda distribution from scratch without the additional libraries.

As of writing, only the conda-forge channel for anaconda supports python versions greater than 3.10. 
While you can change channels during install to install the latest versions of python, it is generally not recommended as anaconda does not guarantee that all of its libraries will work properly with the community version of python.

Installing anaconda is straightforward, and all it requires is for users to go through their guided procedures based on what OS you are using.
You can find the latest instructions at

* https://conda.io/projects/conda/en/latest/user-guide/install/windows.html
* https://conda.io/projects/conda/en/latest/user-guide/install/macos.html
* https://conda.io/projects/conda/en/latest/user-guide/install/linux.html

#### Installing Python via `conda`

Once you have installed either anaconda or miniconda, you can create a virtual conda environment and install python 3.10.2 using the following commands

```bash
$ conda create -n ENV3 -c conda-forge python=3.10.2 pip
```

Optionally, you can omit the python version to get the latest community version as well.

It is very important that you run the latest version of pip along with python.
Failure to do so may result in errors when installing packages designed to use newer versions of pip.

Once the above steps have been completed, you must activate your environment for the newly installed version of python and pip are made available.
You will need to run this command each time you open a new command window, or you can make it active by default by appending the line to your bash configuration located at `~/.bashrc`, `~/.bash_profile`, or your Zsh profile located at `~/.zprofile`.

```bash
conda activate ENV3
```
### Version Test

Regardless of which version you install, you must do a version test to make sure you have the correct python and pip versions:

```bash
$ python --version
$ pip --version
```

If you installed everything correctly, you should see the below versions or newer for each tool:

```
Python 3.10.2
pip 21.3.1
```

If you see an older version of pip, you can update it with

```
pip install -U pip
```

Or with conda,

```
conda update -c conda-forge pip
```