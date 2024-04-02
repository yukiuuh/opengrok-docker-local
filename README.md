# opengrok-docker-local

## Requirements
- docker compose

## Usage

```sh
# start
./compose up -d

# view logs
./compose logs -f

# add repositories
./compose git clone https://github.com/oracle/opengrok.git -b opengrok-main

# reindex
./compose reindex

# open http://localhost:8080 in browser

# stop
./compose down
```