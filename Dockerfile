FROM dockerfile/java

MAINTAINER ouroboros@gilt.com

RUN mkdir -p /opt/flume/logs && touch /opt/flume/logs/flume.log

RUN wget -qO- http://archive.apache.org/dist/flume/1.5.0.1/apache-flume-1.5.0.1-bin.tar.gz \
  | tar zxvf - -C /opt/flume --strip 1


ADD start-flume /opt/flume/bin/start-flume

ADD flume.conf /opt/flume/conf/flume.conf

RUN chown daemon -Rf /opt

ENV JAVA_HOME /opt/java
ENV PATH /opt/flume/bin:$PATH

USER daemon

WORKDIR /opt/flume
CMD [ "start-flume" ]
