# syntax=docker/dockerfile:1.2
FROM node:15.12.0-alpine3.10

WORKDIR /install
COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install --frozen-lockfile
