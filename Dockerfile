FROM debian:buster-slim

# Preps
RUN apt-get -y update \
    && apt-get -y dist-upgrade \
    && apt-get -y install sudo bash nano \
    && apt-get -y autoremove \
    && apt-get -y autoclean \
    && apt-get -y clean \
    && rm -fr /tmp/* /var/tmp/* /var/lib/apt/lists/*
