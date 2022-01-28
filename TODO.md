
## Todo

- [X] Review IEEE Presentation
- [ ] Review MLCommons 
- [ ] Use jabref or emacs for citation management
- [ ] Review Fox paper
- [ ] Frequently check github
- [ ] Read up on TFT
- [ ] Become familiar with the Attention Paper
- [ ] Learn how to selfdeploy jupyterlab
- [ ] Begin to learn about papermill (https://github.com/nteract/papermill)
- [ ] virtualenv on rivanna for a particular python version.
      - Rivanna's core configurations might be a bit limited on this front.  They do provide multiple versions of software (such as py2.7 and py3.8), but we may need to get permission to do something in userspace if we need to be very specific on a version of python outside of a container image.
- [ ] depends on Tensorflow
- [ ] Familiarize yourself with Rivanna's modules (https://lmod.readthedocs.org/) and conda (https://docs.conda.io/en/latest/miniconda.html) environments.
      - Some details are already captured in [Rivanna Notes](./docs/rivanna-notes.md)
- [ ] Look into horovod (https://github.com/horovod/horovod)
- [ ] Look into mlkube for contract-container deployments for the reference model and its dependencies (https://github.com/mlkube/mlkube)
      - [ ] Get familiar with Signularity as a container engine (not the same as docker).
- [ ] pytorch (although, the initial codebase is written to tensorflow)


### Goals

- [ ] write introduction to mlcommons
- [ ] write introduction to earthquake based on Geoffrey's presentation
- [ ] add references to `references.bib` and include them in overleaf paper
- [ ] write tutorial on how to use rivanna and gpus. This includes `module load conda` and creating venv with a particular python environment.
      - [ ] Put this in github `rivanna.md` or `rivanna.adoc` document which GPU grads rivanna has.
      - [ ] You may notice that what they describe may not what actually is on rivanna. We need to confirm with UVA staff how rivanna actually looks like. put this in github under `rivanna.md` or `rivanna.adoc`
- [ ] create an environment where you can edit python (pycharm, emacs, .... or whatever you like), pycharm preferred as it has default code formatter that is uniform on all OSes and follows python pep specs. Write tutorials on how to do that.
      - [ ] Put it in github under `python.md` or `python.adoc`. document how to do a venv in your local machine. Use `~/ENV3` as your venv and activate
install thing such as jabref. write tutorial on how to install. put in github under `jabref.md` or `jabref.adoc`
demonstrate that you contribute to the paper in overleaf

#### overall goal

- [ ] set up your computer
- [ ] identify how to use rivanna and wht it offers
- [ ] work on introductions to get overview of task
- [ ] work on plan on how to address other technologies mentioned such as mlcube, jupyterlab ...
