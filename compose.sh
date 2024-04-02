#!/bin/bash

arch=`uname -m`
if docker compose > /dev/null 2>&1; then
    compose='docker compose'
elif docker-compose > /dev/null 2>&1; then
    compose='docker-compose'
else
    echo 'install docker compose'
    exit 1
fi

if [ ${arch} != "x86_64" ]; then
    file_opt="-f compose.yaml -f compose.build.yaml"
fi

case "$1" in
    reindex)
        cmd="${compose} exec -it opengrok curl 127.0.0.1:5000/reindex"
        ;;
    git|bash)
        cmd="${compose} exec -w /opengrok/src -it opengrok ${@}"
        ;;
    *)
        cmd="${compose} ${file_opt} ${@}"
        ;;
esac

echo \# ${cmd}
echo ---
${cmd}