# Reference data for MiXeR analysis (bivariate and GSA-MiXeR)

This project provides reference files for cross-trait (bivariate) and GSA-MiXeR analyses.

UPD Sep 2025: 
* User instructions are moved to https://github.com/precimed/mixer repository, and you should use this repository for most up to date instructions on how to install and run MiXeR analyses (bivariate, as well as GSA-MiXeR).
* ``mixer.sif`` is replaced with ``gsa-mixer.sif``, which in addition to GSA-MiXeR analysis now also includes cross-trait mixer analysis.
While you will find a ``gsa-mixer.sif`` in ``singularity`` folder of this repository,  however it is not guarantied to have the latest version, and I advice using ``oras pull `` instructions as described in https://github.com/precimed/mixer/blob/master/README.md .
Legacy ``mixer.sif`` container is retained under ``singularity/deprecated/mixer.sif``.
* Latest source codes are moved to https://github.com/precimed/gsa-mixer. Documentation in this repository is only relevant to developers
interested to contribute pull requests to mixer code.

## Instructions for downloading reference data

In order to download the reference files you will need to install the following software:

- [Git](https://git-scm.com/)
- [Git LFS](https://git-lfs.com)

### Initial clone the repository

To download the last revision of this project, issue:

```bash
cd path/to/repositories
git clone --depth 1 https://github.com/comorment/mixer.git
cd mixer
git lfs pull  # pull "large" files
```

### Incremental update to fetch new reference files

```bash
cd path/to/repositories
git pull
git lfs pull
```
