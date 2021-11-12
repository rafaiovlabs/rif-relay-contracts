## rif-relay-contracts dockerfile
FROM node:12-alpine AS compiler
RUN apk add --no-cache build-base git
WORKDIR /usr/src/app
COPY package*.json ./
COPY scripts ./
COPY truffle.js ./
RUN npm install
RUN npm install truffle -g
COPY . ./
#RUN npx truffle migrate --network regtest
RUN npm run deploy regtest

