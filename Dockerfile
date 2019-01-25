# Using base image of Alpine
FROM python:2-alpine

ARG USER=molecule
ARG GROUP=molecule
ARG UID=1000
ARG GID=1000

RUN apk add --no-cache bash

# required only for installing pip packages
# ".build-deps" is virtual packages to be deleted afterwards
RUN apk add --no-cache --virtual .build-deps alpine-sdk build-base gcc libffi-dev linux-headers openssl-dev python-dev
RUN pip install --upgrade pip && \
    pip install molecule ansible docker
# clean up
RUN apk del .build-deps

# start with non-root user
# Alpine use "adduser" instead of "useradd" in Debian
RUN addgroup -g $GID $GROUP && \
    adduser -D -u $UID $USER -G $GROUP
RUN apk add --no-cache sudo && \
    echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USER

WORKDIR /home/$USER
CMD [ "bash" ]


# # ---------------------------------------------------
# # Using base image of Debian:stretch
# FROM python:2-stretch

# # for apt-get
# ARG DEBIAN_FRONTEND=noninteractive

# ARG USER=jenkins
# ARG GROUP=jenkins
# ARG UID=1000
# ARG GID=1000

# RUN apt-get update && \
#     apt-get -y upgrade

# RUN pip install --upgrade pip && \
#     pip install molecule ansible

# # start with non-root user
# # Alpine use "adduser" instead of "useradd" in Debian
# RUN groupadd -r -g $GID $GROUP && \
#     useradd --no-log-init -r -m -g $GROUP -u $UID $USER
# RUN apt-get -y install sudo && \
#     echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# USER $USER

# WORKDIR /home/$USER
# CMD [ "bash" ]
