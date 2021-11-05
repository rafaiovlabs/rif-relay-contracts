FROM node:12.18.1
RUN apk add --no-cache build-base git
WORKDIR /usr/src/app
COPY package*.json ./
COPY scripts ./
RUN npm install
RUN npm install truffle -g
COPY . ./
RUN npx truffle migrate --network regtest
