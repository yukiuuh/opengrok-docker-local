# opengrok-docker-local

## Requirements

- docker compose

## Install

```sh
git clone git@github.com:yukiuuh/opengrok-docker-local.git
```

## Usage

```sh
# start
./compose up -d

# view logs
./compose logs -f

# add repositories(exmaple)
./compose git clone https://github.com/oracle/opengrok.git -b master opengrok-master

# reindex
./compose reindex

# open http://localhost:8080 in browser

# stop
./compose down
```