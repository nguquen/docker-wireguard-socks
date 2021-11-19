# Wireguard + SOCKS proxy all in one

This container image runs Wireguard + SOCKS proxy.

```bash
./build.sh
./start.sh
```

Testing
```
curl --proxy socks5://127.0.0.1:1080 ipinfo.io
```
