# Base Image
FROM ubuntu:18.04

LABEL   Description="This image is used to execute LoadRunner Developer scripts in Windows. It uses DevWeb as its backbone." \
        Maintainer="NaveenKumar Namchivayam" \
        Vendor="QAInsights.com"

# Copy the files to container
COPY / /

# Updating Ubuntu and extracting the TAR file
RUN apt-get update \
    && apt-get upgrade \
    && tar -xvf DevWeb_2020.1.tar

# Setting the working dir
WORKDIR /DevWeb

# Entrypoint
ENTRYPOINT [ "bash","/run.sh" ]