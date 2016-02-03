FROM ubuntu/trusty

MAINTAINER Octavian Vaideanu <oktav2k3@gmail.com>

RUN apt-get update -q && \
 apt-get install --yes --force-yes runit

COPY ./runsvdir-start /usr/local/sbin/runsvdir-start

ENTRYPOINT ["/usr/local/sbin/runsvdir-start"]