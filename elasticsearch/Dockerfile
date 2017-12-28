FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.3

# MAINTAINER is deprecated, use labels instead
LABEL maintainer="Hossam Hammady <github@hammady.net>"

ADD ./elasticsearch/ /usr/share/elasticsearch/config
ADD ./healthcheck.sh /usr/bin/es-healthcheck

# uninstall x-pack
RUN \
  mv /usr/share/elasticsearch/plugins/x-pack /usr/share/elasticsearch/plugins/.removing-x-pack && \
  mv /usr/share/elasticsearch/plugins/.removing-x-pack /usr/share/elasticsearch/plugins/x-pack && \
  /usr/share/elasticsearch/bin/elasticsearch-plugin remove x-pack --purge
