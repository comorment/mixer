# Reference data for MiXeR analysis (bivariate and GSA-MiXeR)

This project provides reference files for cross-trait (bivariate) and GSA-MiXeR analyses.
You will find brief description of the reference files [here](reference/README.md).

> [!WARNING] 
> As of Sep 24, 2025 there is known issue with GitLFS quota on this repository. While this is not resolved use [this Dropbox link](https://www.dropbox.com/scl/fo/y5yl2bd5mgplsjwwzsx77/AIFIhSJkzJTFIYhR95TwRVc?rlkey=eydtbzwva5294snzgf6lz0g5f&st=5g7d4jiv&dl=0) to download. Total size of the ``reference`` folder is around 14 GB.

UPD Sep 2025: 
* User instructions are moved to https://github.com/precimed/mixer repository, and you should use this repository for most up to date instructions on how to install and run MiXeR analyses (bivariate, as well as GSA-MiXeR).
* ``mixer.sif`` is upgraded from ``v1.3`` to ``v2.2.1``, which in addition to cross-trait analysis now also includes GSA MiXeR.
Previous version (``mixer.sif`` v1.3) is retained under ``singularity/v1.3/mixer.sif``.
While you will find a ``mixer.sif`` under ``singularity/v2.2.1`` folder of this repository, note that future releases won't be uploaded here. Instead, to get future versions, use ``oras pull `` command as described in https://github.com/precimed/mixer/blob/master/README.md .
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

### Systems without internet access

Some secure platforms do not have direct internet access, hence we recommend cloning/pulling all reference files on a machine with internet access above, and archive the `mixer` directory with all files and moving it using whatever file uploader is available for the platform.

```bash
cd /path/to/mixer
SHA=$(git rev-parse --short HEAD)
cd ..
tar --exclude=".git/*" -cvf mixer_$SHA.tar mixer
```

### Citation info

If you use ``singularity/v1.3/mixer.sif`` software, please cite our relevant preprint. For newer versions, see relevant publications [here](https://github.com/precimed/mixer).

```
Akdeniz, B.C., Frei, O., Hagen, E., Filiz, T.T., Karthikeyan, S., Pasman, J.A., Jangmo, A., Bergsted, J., Shorter, J.R., Zetterberg, R., Meijsen, J.J., Sønderby, I.E., Buil, A., Tesli, M., Lu, Y., Sullivan, P., Andreassen, O.A., & Hovig, E. (2022). COGEDAP: A COmprehensive GEnomic Data Analysis Platform. arXiv:2212.14103 [q-bio.GN]. DOI: [10.48550/arXiv.2212.14103](https://doi.org/)
```

Bibtex format:
```
@misc{akdeniz2022cogedap,
      title={COGEDAP: A COmprehensive GEnomic Data Analysis Platform}, 
      author={Bayram Cevdet Akdeniz and Oleksandr Frei and Espen Hagen and Tahir Tekin Filiz and Sandeep Karthikeyan and Joelle Pasman and Andreas Jangmo and Jacob Bergsted and John R. Shorter and Richard Zetterberg and Joeri Meijsen and Ida Elken Sonderby and Alfonso Buil and Martin Tesli and Yi Lu and Patrick Sullivan and Ole Andreassen and Eivind Hovig},
      year={2022},
      eprint={2212.14103},
      archivePrefix={arXiv},
      primaryClass={q-bio.GN}
}
```

# Changelog

## 2025-09-12

- Added ``singularity/v2.2.1/mixer.sif`` w. md5 checksum 9b990dbcc9d4cde8d9755ea0da0e78bd. This version supports GSA-MiXeR analysis
- Previous container is moved from ``singularity/mixer.sif`` to ``singularity/v1.3/mixer.sif``
- Added reference files for GSA-MiXeR analysis
- Added pre-generated synthetic GWAS data: ``referene/hapgen/[partial,shared,unique].sumstats.gz``
- Added ``reference/mixer_hello_world`` dataset

## 2023-10-24

- Rebuilt ``singularity/mixer.sif`` container w. md5 checksum b344119fd1f8f9c425f0edea78c08881 (commit: 3882739). This includes the following changes:
  - Use Ubuntu 20.04 LTS as base image for Docker and Singularity containers.
  - Use mambaforge for Python 3.10.14 environment (was Python 3.8)
  - Updated PLINK2.0 (20240516)
  - Updated PLINK1.9 (20231211) and PLINK2.0 (20231211) versions (and revised corresponding syntax in mixer_simu example)
  - Updated apt package versions to current
  - Revised installer scripts
  - Added `gdb` to `apt_get_essentials.sh` for debugging.
  - Version pinned for Ubuntu, conda and conda packages.
  - Run `conda clean -a -y` in Dockerfile reducing image size.
- Updated READMEs and improve example files

## 2022-09-30

- Added ``singularity/mixer.sif`` container w. md5 checksum 7e233fdc91e9de1f89cb579af3809752 for [MiXeR software](https://github.com/precimed/mixer).
- Added reference datasets:
  - ``hapgen/chr21.[bed,bim,fam]`` - synthetic genotypes (N=10.000 individuals) with realistic LD structure generated using hapgen2 software
  - ``ldsc/1000G_EUR_Phase3_plink/*`` - reference data, derived from 1000 genomes Phase3 data, EUR population, pre-processed for LD score regression software (<https://alkesgroup.broadinstitute.org/LDSCORE/>)
  - ``sumstats/*`` - several GWAS summary statistics on real phenotypes. See [reference/sumstats/README.md](reference/sumstats/README.md) for more information.
- Added examples of how to apply MiXeR on [synthetic](usecases/mixer_real.md) and [real](usecases/mixer_simu.md) data
