# This is a comment
FROM ubuntu:14.04
MAINTAINER Thomas Velthoven <thomas@velthoven.no>
RUN export DEBIAN_FRONTEND=noninteractive 
RUN apt-get update
RUN apt-get install -y mc
RUN apt-get install -y emacs24-nox
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y byobu

