FROM 'ubuntu:18.04'

ENV TZ=Europe
ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp
COPY /scripts/apt_get_essential.sh .
RUN chmod +x apt_get_essential.sh
RUN bash apt_get_essential.sh

WORKDIR /tmp
COPY /scripts/install_miniconda3.sh .
RUN chmod +x install_miniconda3.sh
RUN bash install_miniconda3.sh

RUN conda install python=3.8 --yes
RUN conda install -c conda-forge jupyterlab --yes
RUN conda install numpy scipy pandas statsmodels matplotlib seaborn --yes
RUN conda install -c conda-forge matplotlib-venn numdifftools --yes

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

RUN conda clean -a -y

WORKDIR /tools
 
