FROM openjdk:11.0.8-jdk-buster
MAINTAINER dubalda
WORKDIR /

ENV LANGUAGE C.UTF-8
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV FC_LANG en-US
ENV LC_CTYPE C.UTF-8

RUN echo "networkaddress.cache.ttl=10" >> $JAVA_HOME/conf/security/java.security && \
    locale -a && \
    apt-get update && \
    apt-get install -y --no-install-recommends fonts-dejavu fontconfig && \
    apt-get clean && \
    ls /usr/share/fonts/truetype/dejavu/

CMD ["java"]
