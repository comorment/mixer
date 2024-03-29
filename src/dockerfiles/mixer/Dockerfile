FROM ubuntu:20.04

ENV TZ=Europe
ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp
COPY /scripts/apt_get_essential.sh .
RUN chmod +x apt_get_essential.sh && \
    bash apt_get_essential.sh

WORKDIR /tmp
COPY /scripts/install_miniconda3.sh .
RUN chmod +x install_miniconda3.sh && \
    bash install_miniconda3.sh

RUN conda install conda=23.9.0 && \
    conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install \
    jupyterlab=4.0.7 \
    matplotlib=3.7.3 \
    matplotlib-venn=0.11.9 \
    numpy=1.24.4 \
    numdifftools=0.9.41 \
    pandas=2.0.3 \
    python=3.8 \
    scipy=1.10.1 \
    seaborn=0.13.0 \
    statsmodels=0.14.0 \
    --yes && \
    conda clean -a -y

WORKDIR /tools/plink
COPY /scripts/install_plink.sh /tmp
RUN chmod +x /tmp/install_plink.sh
RUN bash /tmp/install_plink.sh

WORKDIR /tools
COPY /scripts/install_mixer.sh /tmp
RUN chmod +x /tmp/install_mixer.sh
RUN bash /tmp/install_mixer.sh
ENV BGMG_SHARED_LIBRARY="/tools/mixer/src/build/lib/libbgmg.so"

WORKDIR /tools/simu
COPY /scripts/install_simu.sh /tmp
RUN chmod +x /tmp/install_simu.sh
RUN bash /tmp/install_simu.sh

WORKDIR /tools/plink2
COPY /scripts/install_plink2.sh /tmp
RUN chmod +x /tmp/install_plink2.sh
RUN bash /tmp/install_plink2.sh


WORKDIR /tools
 
