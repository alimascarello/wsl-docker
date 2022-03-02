FROM ubuntu

COPY emoji-search app

ENV DEBIAN_FRONTEND=noninteractive

RUN  apt-get update && apt-get install -y npm

WORKDIR app

RUN npm install

RUN npm audit fix