FROM openjdk:11.0.7-jdk
MAINTAINER dubalda
WORKDIR /

ENV FC_LANG en-US
ENV LC_CTYPE en_US.UTF-8

RUN apt-get install -y --no-install-recommends fonts-dejavu-core fontconfig

CMD ["java"]