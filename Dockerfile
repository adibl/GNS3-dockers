FROM continuumio/anaconda:latest

RUN apt-get update
RUN jupyter notebook --generate-config
CMD ['/bin/bash']
