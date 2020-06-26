FROM openjdk:11.0.7-jdk
MAINTAINER dubalda
WORKDIR /
# Jasper fonts
ENV FC_LANG en-US
ENV LC_CTYPE en_US.UTF-8
# dependencies
# RUN apk add --update bash ttf-dejavu fontconfig

RUN apt-get install -y --no-install-recommends fonts-dejavu-core fontconfig
CMD java