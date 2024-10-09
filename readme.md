# 迷雾通命令行客户端for Docker

https://github.com/geph-official/geph4-client
## docker-compose

```yaml
services:
  geph4-client:
    image: whp98/geph4-client:4.99.8
    container_name: geph4-client
    restart: unless-stopped
    ports:
      #socks5代理端口
      - "39909:9909"
      #http代理端口
      - "39910:9910"
    # 可选配置修改成你的付费账户,默认账号为public
    #command: geph4-client connect --socks5-listen 0.0.0.0:9909 --http-listen 0.0.0.0:9910 --exit-server ca-mtl-109.geph.io auth-password --username public --password public
    logging:
      driver: local
      options:
        max-size: "10m"
```
## docker run

```shell
docker run -d \
  --name geph4-client \
  --restart unless-stopped \
  -p 39909:9909 \
  -p 39910:9910 \
  --log-driver local \
  --log-opt max-size=10m \
  whp98/geph4-client:4.99.8 \
  geph4-client connect --socks5-listen 0.0.0.0:9909 --http-listen 0.0.0.0:9910 --exit-server ca-mtl-109.geph.io auth-password --username public --password public
```