FROM node:15.12.0-alpine3.10

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install -g
