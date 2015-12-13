# This is a comment
FROM ubuntu:14.04
MAINTAINER Thomas Velthoven <thomas@velthoven.no>
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mc
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y emacs24-nox
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y byobu

