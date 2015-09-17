# Apache Spark image for Docker
#
# https://github.com/jaceklaskowski/docker-spark
#
# If you're reading this and have any feedback on how this image could be improved,
# please open an issue or a pull request so we can discuss it!

FROM ubuntu:14.04
MAINTAINER Jacek Laskowski <jacek@deepsense.io>

ENV SPARK_VERSION 1.5.0
ENV JAVA_HOME     /usr/lib/jvm/java-7-openjdk-amd64
ENV PATH          $PATH:$JAVA_HOME/bin
ENV SPARK_DIR     spark-${SPARK_VERSION}-bin-hadoop2.6
ENV SPARK_TGZ     $SPARK_DIR.tgz

# See https://github.com/phusion/baseimage-docker/issues/58
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN  apt-get update \
  && apt-get install -y wget openjdk-7-jdk \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && wget -qO - http://d3kbcqa49mib13.cloudfront.net/${SPARK_TGZ} | tar -xz -C /usr/local/ \
  && cd /usr/local && ln -s ${SPARK_DIR} spark

CMD ["/bin/bash"]
