FROM debian:buster-slim

RUN adduser akash
WORKDIR /home/akash

ARG AKASH_VERSION
ENV AKASH_VERSION=$AKASH_VERSION
ENV AKASH_USER=akash
ENV TEMP_WALLET_PASSWORD=changeme

RUN apt-get update
RUN apt install zip curl bash jq python3-pip git wget bc inetutils-ping -y
RUN pip3 install yq

RUN echo "Installing Akash CLI version $AKASH_VERSION"
RUN curl https://raw.githubusercontent.com/ovrclk/akash/master/godownloader.sh | sh -s -- "$AKASH_VERSION"

RUN echo "export PATH=$PATH:/home/$AKASH_USER/bin" >> /home/$AKASH_USER/.profile

COPY --chown=akash:akash --chmod=555 ./entrypoint.sh .
COPY deploy.yaml .
USER akash

ENTRYPOINT ["./entrypoint.sh"]
