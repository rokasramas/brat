FROM python:3.8-slim

ARG PORT=8001

COPY ./ /usr/src/brat
WORKDIR /usr/src/brat

RUN mkdir /data && mkdir /work
RUN ln -s /data /usr/src/brat/data && ln -s /work /usr/src/brat/work

VOLUME /data
VOLUME /work

CMD python standalone.py ${PORT}
