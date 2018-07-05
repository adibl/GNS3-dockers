FROM continuumio/anaconda

USER root
RUN apt-get update
RUN conda install -c anaconda pip
RUN pip install cryptography
RUN pip install paramiko
RUN pip install netmiko
RUN pip install scapy

RUN jupyter notebook --generate-config
RUN jupyter notebook password
RUN 1234
RUN 1234
RUN jupyter notebook --ip 0.0.0.0 --port 8888 --allow-root
