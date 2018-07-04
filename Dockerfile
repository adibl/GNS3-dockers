FROM continuumio/anaconda

RUN apt-get update
RUN jupyter notebook --generate-config
