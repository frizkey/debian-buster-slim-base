FROM debian:buster-slim

RUN echo "I'm building for $BUILDPLATFORM"

# Preps
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y dist-upgrade

# Adding just enough packages
RUN apt-get -y install nano sudo dnsutils wget bash

# Clean up
RUN apt-get autoremove \
    && apt-get auto-clean \
    && apt-get clean \
    && rm -fr /tmp/* /var/tmp/*
