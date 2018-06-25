FROM base/archlinux

RUN pacman -S --no-confirm unison

ENV UNISON_WORKING_DIR=/unison

WORKDIR /root

VOLUME $UNISON_WORKING_DIR
EXPOSE 5000

