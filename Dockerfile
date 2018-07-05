FROM continuumio/anaconda

USER root
# Python dependencies
RUN apt-get update 

# Python 2
USER py2

# Install Python 2 packages
RUN conda install --yes \
    'python=2.7*' \
    'ipython=4.0*' \
    && conda clean -yt
RUN conda install -c mhworth scapy
RUN jupyter notebook --generate-config
USER root
