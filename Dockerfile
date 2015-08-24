FROM buildpack-deps:jessie
MAINTAINER zchee <zcheeee@gmail.com>

RUN echo 'deb http://http.us.debian.org/debian unstable main contrib non-free' >> '/etc/apt/sources.list'
RUN apt-get update
RUN apt-get install -y httrack

WORKDIR src
VOLUME src

ENTRYPOINT ["httrack"]
# CMD ['/bin/bash']
