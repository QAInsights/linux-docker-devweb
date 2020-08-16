# Base Image
FROM ubuntu:18.04

LABEL   Description="This image is used to execute LoadRunner Developer scripts in Linux. It uses DevWeb as its backbone." \
        Maintainer="NaveenKumar Namchivayam" \
        Vendor="QAInsights.com"

# Copy the files to container
COPY / /

# Updating Ubuntu and extracting the TAR file
RUN apt-get update -y \
    && apt-get upgrade -y \
    && tar -xvf LoadRunner_Developer_2020.2.tar.gz

# Setting the working dir
WORKDIR /DevWeb

# Entrypoint
ENTRYPOINT ["bash","/run.sh" ]
#CMD [ "/bin/bash" ]