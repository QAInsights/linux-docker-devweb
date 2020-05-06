FROM ubuntu:18.04
COPY / /
RUN apt-get update \
    && apt-get upgrade \
    && tar -xvf DevWeb_2020.1.tar
WORKDIR /DevWeb
#CMD ["/bin/sh"]
ENTRYPOINT [ "bash","/run.sh" ]