FROM continuumio/anaconda

USER root
# Python dependencies
RUN apt-get update 
# Install Python 2 packages
RUN conda install --yes \
    'python=2.7*' \
    'ipython=4.0*' \
    && conda clean -yt
RUN conda install -c anaconda pip
RUN pip install cryptography
RUN pip install paramiko
RUN pip install netmiko
RUN pip install scapy

RUN jupyter notebook --generate-config
USER root
