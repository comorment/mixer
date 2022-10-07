# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Run `conda clean -a -y` in Dockerfile reducing image size.

## [1.3.0] - 2022-09-30

### Added
- [MiXeR software](https://github.com/precimed/mixer) v1.3.0 packaged into singularity container. MD5 checksum:
  ```
  7e233fdc91e9de1f89cb579af3809752  mixer.sif
  ```
- Reference datasets:

  * ``hapgen/chr21.[bed,bim,fam]`` - synthetic genotypes (N=10.000 individuals) with realistic LD structure generated using hapgen2 software
  * ``ldsc/1000G_EUR_Phase3_plink/*`` - reference data, derived from 1000 genomes Phase3 data, EUR population, pre-processed for LD score regression software (https://alkesgroup.broadinstitute.org/LDSCORE/)
  * ``sumstats/*`` - several GWAS summary statistics on real phenotypes. See [reference/sumstats/README.md](reference/sumstats/README.md) for more information.

- Examples of how to apply MiXeR on [synthetic](usecases/mixer_real.md) and [real](usecases/mixer_simu.md) data
