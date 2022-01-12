FROM debian:buster-slim

RUN apt-get update
RUN apt install zip curl -y
