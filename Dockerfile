FROM alpine:3.14

RUN apk add --no-cache \
        tini openresolv curl iputils iptables ip6tables iproute2 wireguard-tools findutils dante-server

COPY ./sockd.conf /etc/
COPY entrypoint.sh /entrypoint.sh

EXPOSE 1080/tcp

CMD ["tini", "--", "/entrypoint.sh"]
