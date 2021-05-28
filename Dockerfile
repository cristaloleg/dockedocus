FROM node:15.12.0-alpine3.10

WORKDIR /install
COPY package.json package.json

RUN npm install --global
