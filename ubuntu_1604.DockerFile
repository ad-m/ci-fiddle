FROM drydock/u16:latest
MAINTAINER Jeroen de Bruijn <vidavidorra@gmail.com>

ARG CMAKE_VERSION
ENV PATH="${PATH}:/usr/local/gcc-arm-none-eabi-4_9-2015q3/bin"

ADD . /uxx-cmake

# Set debconf to non-interactive to prevent lots of debconf warnings.
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN pwd
RUN ls -la /uxx-cmake/.ci
RUN chmod +x /uxx-cmake/.ci/install /uxx-cmake/.ci/build
RUN /uxx-cmake/.ci/install

ENTRYPOINT ["/bin/bash"]
