FROM continuumio/anaconda

USER root
# Python dependencies
RUN apt-get update 
RUN apt-get upgrade
RUN conda install -c anaconda pip
RUN pip install cryptography
RUN pip install paramiko
RUN pip install netmiko
RUN pip install scapy

RUN jupyter notebook --generate-config
