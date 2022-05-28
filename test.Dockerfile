FROM ubuntu:focal AS base
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
ARG USER=foobar
ARG PASS="root"
RUN useradd -m -s /bin/bash $USER && echo "$USER:$PASS" | chpasswd
RUN adduser $USER sudo && echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER root
RUN apt update && \
    apt install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt update && \
    apt install -y curl git ansible build-essential
USER foobar
WORKDIR /home/foobar
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
