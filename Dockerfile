FROM jupyter/datascience-notebook:latest

ENV CLOUD_SDK_VERSION 240.0.0

# need to be root to install system packages
USER root

# package dependencies
RUN apt-get update \
    && apt-get -qqy install lsb-release gnupg2 build-essential

# cleanup
RUN rm -rf /var/lib/apt/lists/*

# install custom packages
RUN conda install --quiet --yes \
    'libgfortran=3.0.0' \
    'simplegeneric=0.8.1' \
    'altair=3.1.0'

# install latest Juipyterlab
RUN pip install 'jupyterlab==1.0.2'

# switching back to jovyan
USER jovyan