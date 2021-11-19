#!/bin/sh
docker run  \
    --name wg-socks \
    --privileged \
    --rm \
    -itd \
    -v $(pwd)/conf/wg0.conf:/etc/wireguard/wg0.conf \
    -p 1080:1080 \
    wg-socks
