# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Updated

- Updated PLINK2.0 (20240516)
- Added installation information to the README.md file.
- Mambaforge for Python 3.10.14 environment (was Python 3.8)
- Updated PLINK1.9 (20231211) and PLINK2.0 (20231211) versions (and revised corresponding syntax in mixer_simu example)
- Updated apt package versions to current
- Revised installer scripts
- Updated READMEs and example files

### Added

- Added `gdb` to `apt_get_essentials.sh` for debugging.
- Version pinned for Ubuntu, conda and conda packages.
- Run `conda clean -a -y` in Dockerfile reducing image size.

### Changed

- Use Ubuntu 20.04 LTS as base image for Docker and Singularity containers.
- Rebuilt container w. md5 checksum b344119fd1f8f9c425f0edea78c08881 (commit: 3882739)


## [1.3.0] - 2022-09-30

### Added

- [MiXeR software](https://github.com/precimed/mixer) v1.3.0 packaged into singularity container. MD5 checksum:

  ```
  7e233fdc91e9de1f89cb579af3809752  mixer.sif
  ```

