# opengrok-docker-local

## Requirements

- docker compose

## Install

```sh
git clone git@github.com:yukiuuh/opengrok-docker-local.git
```

## wrapper script for bash environments(WSL,Mac,Linux...)

```sh
# start
./compose up -d

# view logs
./compose logs -f

# add repositories(exmaple)
./compose git clone https://github.com/oracle/opengrok.git -b master opengrok-master # from inside the container
git clone https://github.com/oracle/opengrok.git -b master ./opengrok/src/opengrok-master # or from outside the container

# force reindex
./compose reindex

# open http://localhost:8080 in browser

# stop
./compose down
```