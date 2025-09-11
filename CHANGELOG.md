# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Added GSA-MiXeR reference files from https://github.com/precimed/gsa-mixer
- Added ``referene/hapgen/[partial,shared,unique].sumstats.gz``
- Added ``reference/ldsc/1000G_EUR_Phase3_plink/1000G.EUR.QC.@.[bed,bim,fam]`` files, to simplify steps for MAGMA analysis in GSA-MiXeR protocol
- Added ``reference/ldsc/1000G_EUR_Phase3_plink/baseline_v2.2_1000G.EUR.QC.@.annot.gz`` files - binary functional annotations based
- Added ``singularity/gsa-mixer.sif`` version 2.2.1

### Changed

- Moved ```singularity/mixer.sif``` into ``deprecated`` sub-folder. Use ``gsa-mixer.sif`` instead.  This container also support cross-trait analysis. See https://github.com/precimed/mixer for further instructions.

## [Unreleased] - 2023-10-24

### Changed

- Rebuilt ``singularity/mixer.sif`` container w. md5 checksum b344119fd1f8f9c425f0edea78c08881 (commit: 3882739).
  For more info see ``singularity/CHANGELOG``.
 
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
