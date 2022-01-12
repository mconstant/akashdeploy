FROM debian:buster-slim

ARG AKASH_VERSION
ENV AKASH_VERSION=$AKASH_VERSION

RUN apt-get update
RUN apt install zip curl -y

RUN echo "Installing Akash CLI version $AKASH_VERSION"
RUN curl https://raw.githubusercontent.com/ovrclk/akash/master/godownloader.sh | sh -s -- "v$AKASH_VERSION"