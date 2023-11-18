ARG NODE_VERSION=current-alpine
FROM node:$NODE_VERSION AS base
LABEL maintainer="ubbn"

ARG PNPM_VERSION=latest
ENV PNPM_VERSION=$PNPM_VERSION

RUN apk update && apk add --no-cache libc6-compat
RUN corepack enable
RUN corepack prepare pnpm@$PNPM_VERSION --activate
