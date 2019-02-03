FROM drydock/u14:latest
MAINTAINER Jeroen de Bruijn <vidavidorra@gmail.com>

ADD . /linux-cmake

# Set debconf to non-interactive to prevent lots of debconf warnings.
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN chmod +x /linux-cmake/docker/*
RUN /linux-cmake/docker/install

ENTRYPOINT ["/bin/bash"]
