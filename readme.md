# docker

## docker-compose

```yaml
services:
  geph-test:
    build: .
    ports:
      - "9909:9909"
      - "9910:9910"
```