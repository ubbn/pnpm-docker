# PNPM in Docker

PNPM is a fast, disk space efficient package manager. Read more https://pnpm.io/

This docker image provides PNPM pre-installed on node alpine images https://hub.docker.com/_/node

## Usage

To pull the image

```bash
docker pull ubbn/pnpm
```

The image can be found on [docker hub](https://hub.docker.com/r/ubbn/pnpm)

## Build

```bash
docker build --build-arg NODE_VERSION=<node image tag> --tag=<image tag> . --no-cache
```
