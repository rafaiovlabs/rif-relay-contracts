# rif-relay-contracts dockerfile
FROM node:12-alpine AS compiler
RUN apk add --no-cache build-base git bash
WORKDIR /usr/src/app
COPY . ./
RUN npm install
RUN npm run deploy regtest
