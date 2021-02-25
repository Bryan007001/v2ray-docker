docker run --restart=always --name=v2ray -p 8001:8001 -v ~/v2ray-docker/conf/config.json:/etc/v2ray/config.json -v ~/v2ray-docker/logs:/var/log/v2ray -i -t -d v2ray/official:latest
