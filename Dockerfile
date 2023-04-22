ARG NODE_VERSION=latest

FROM node:$NODE_VERSION AS base
LABEL maintainer="ubbn"

RUN apk update && apk add --no-cache libc6-compat
RUN corepack enable && corepack prepare pnpm@latest --activate 
