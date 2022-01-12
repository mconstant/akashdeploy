FROM debian:buster-slim

RUN adduser akash
WORKDIR /home/akash

ARG AKASH_VERSION
ENV AKASH_VERSION=$AKASH_VERSION
ENV AKASH_USER=akash

RUN apt-get update
RUN apt install zip curl bash -y

RUN echo "Installing Akash CLI version $AKASH_VERSION"
RUN curl https://raw.githubusercontent.com/ovrclk/akash/master/godownloader.sh | sh -s -- "v$AKASH_VERSION"

RUN echo "export PATH=$PATH:/home/$AKASH_USER/bin" >> /home/$AKASH_USER/.profile

COPY --chown=akash:akash --chmod=555 ./entrypoint.sh .
USER akash

ENTRYPOINT ["./entrypoint.sh"]