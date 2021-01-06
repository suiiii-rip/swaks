FROM ubuntu:latest

COPY repeat.sh /repeat.sh

RUN apt-get update && \
  apt-get install -y swaks 

ENTRYPOINT ["/usr/bin/swaks"]
