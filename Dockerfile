FROM openjdk:14.0.2-jdk-buster
MAINTAINER dubalda
WORKDIR /

ENV LANGUAGE C.UTF-8
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV FC_LANG en-US
ENV LC_CTYPE C.UTF-8

RUN locale -a && \
    apt-get update && \
    apt-get install -y --no-install-recommends fonts-dejavu fontconfig && \
    apt-get clean && \
    ls /usr/share/fonts/truetype/dejavu/

CMD ["java"]
