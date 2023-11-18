# PNPM in Docker

PNPM is a fast, disk space efficient package manager. Read more https://pnpm.io/

This docker image provides PNPM pre-installed on node alpine images https://hub.docker.com/_/node

## Usage

To pull the image

```bash
docker pull ubbn/pnpm
```

The images can be found on [docker hub](https://hub.docker.com/r/ubbn/pnpm)

## Build a new image

Or you can build your own image by choosing your desired node and pnpm versions with following command:

```bash
docker build --tag=<image name>:<tag> \
    --build-arg NODE_VERSION=<node version> \
    --build-arg PNPM_VERSION=<pnpm version> \
    . --no-cache
```

### Examples

Build image of pnpm 8.10.5 on top of node 20.9.0-alpine

```bash
docker build --tag=bbn/pnpm:8.10.5 \
    --build-arg NODE_VERSION=20.9.0-alpine \
    --build-arg PNPM_VERSION=8.10.5 \
    . --no-cache

# check versions
docker run --rm my-pnpm:8.10.5 env
docker run --rm my-pnpm:8.10.5 pnpm -v
docker run --rm my-pnpm:8.10.5 node -v
```

Build image of last pnpm and latest node

```bash
docker build --tag=my-pnpm:latest . --no-cache

# check versions
docker run --rm my-pnpm:latest env
docker run --rm my-pnpm:latest pnpm -v
docker run --rm my-pnpm:latest node -v
```
