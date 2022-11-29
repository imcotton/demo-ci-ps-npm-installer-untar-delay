ARG NV=14
FROM node:${NV}

WORKDIR /app

COPY package.json ./

RUN npm install --no-fund -g npm@8

ARG PV
RUN npm install --no-fund --no-package-lock purescript@${PV}

RUN echo installed purescript v$(npx purs --version)

