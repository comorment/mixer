# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Added ``reference/ldsc/1000G_EUR_Phase3_plink/1000G.EUR.QC.@.[bed,bim,fam]`` files, to simplify steps for MAGMA analysis in GSA-MiXeR protocol

### Updated

- Updated PLINK2.0 (20240516)
- Added installation information to the README.md file.
- Mambaforge for Python 3.10.14 environment (was Python 3.8)
- Updated PLINK1.9 (20231211) and PLINK2.0 (20231211) versions (and revised corresponding syntax in mixer_simu example)
- Updated apt package versions to current
- Revised installer scripts
- Updated READMEs and example files

### Added

- Building and pushing the MiXeR images in both Docker and Singularity format to the [ghcr.io](https://ghcr.io) registry is now automated using GitHub Actions.
- Added `gdb` to `apt_get_essentials.sh` for debugging.
- Version pinned for Ubuntu, conda and conda packages.
- Run `conda clean -a -y` in Dockerfile reducing image size.
- Added [`usecases/run_mixer.ipynb`](usecases/run_mixer.ipynb) Jupyter notebook for simplifying Slurm job submissions for lists of traits.
- Include ``module purge`` in Slurm job scripts to avoid conflicts with system modules.

### Changed

- Use Ubuntu 20.04 LTS as base image for Docker and Singularity containers.
- Rebuilt container w. md5 checksum b344119fd1f8f9c425f0edea78c08881 (commit: 3882739)

### Fixed

- Removed use of `np.unique` in [`usecases/run_mixer.ipynb`](usecases/run_mixer.ipynb)
- Fixed incorrect job dependency bug in [`usecases/run_mixer.ipynb`](usecases/run_mixer.ipynb)
- Updated outdated paths to comorment containers on p697
- Explicitly named log files in Slurm .job scripts
- Fixed reference to wrong container file in MIXER_SIMU.job

## [1.3.0] - 2022-09-30

### Added

- [MiXeR software](https://github.com/precimed/mixer) v1.3.0 packaged into singularity container. MD5 checksum:

  ```
  7e233fdc91e9de1f89cb579af3809752  mixer.sif
  ```

- Reference datasets:

  - ``hapgen/chr21.[bed,bim,fam]`` - synthetic genotypes (N=10.000 individuals) with realistic LD structure generated using hapgen2 software
  - ``ldsc/1000G_EUR_Phase3_plink/*`` - reference data, derived from 1000 genomes Phase3 data, EUR population, pre-processed for LD score regression software (<https://alkesgroup.broadinstitute.org/LDSCORE/>)
  - ``sumstats/*`` - several GWAS summary statistics on real phenotypes. See [reference/sumstats/README.md](reference/sumstats/README.md) for more information.

- Examples of how to apply MiXeR on [synthetic](usecases/mixer_real.md) and [real](usecases/mixer_simu.md) data
