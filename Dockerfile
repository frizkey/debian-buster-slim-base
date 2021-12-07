ARG FRM='debian:buster-slim'
ARG TAG='latest'

FROM ${FRM}
ARG FRM
ARG TAG

# Install basic packages
RUN apt-get -y update \
    && apt-get -y dist-upgrade \
    && apt-get -y install sudo bash vim procps tini \
    && apt-get -y autoremove \
    && apt-get -y autoclean \
    && apt-get -y clean \
    && rm -fr /tmp/* /var/tmp/* /var/lib/apt/lists/*

RUN echo "$(date "+%d.%m.%Y %T") Built from ${FRM} with tag ${TAG}" >> /build_date.info
