FROM debian:buster-slim

# Preps
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y dist-upgrade

# Adding just enough packages
RUN apt-get -y install nano sudo bash

# Clean up
RUN apt-get -y autoremove \
    && apt-get -y auto-clean \
    && apt-get -y clean \
    && rm -fr /tmp/* /var/tmp/*
