FROM ubuntu:18.04

ENV DEST_UID 1000
ENV DEST_GID 1000

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update

RUN apt-get -qq  install -y --no-install-recommends \
    python


VOLUME [ "/src", "/dest" ]

ADD apkg-tools.py /bin/apkg-tools.py
ADD apkg-create.sh /bin/apkg-create.sh

WORKDIR /bin
CMD "./apkg-create.sh"