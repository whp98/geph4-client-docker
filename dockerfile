FROM rust:bullseye as builder
RUN cargo install geph4-client

# FROM debian:bullseye
#RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*
# COPY --from=builder /usr/local/cargo/bin/geph4-client /usr/local/bin/geph4-client
RUN mkdir -p /root/.config/geph4-credentials
RUN chmod 777 -R /root
RUN mkdir -p ~/.config
RUN chmod 777 -R ~/.config
#ENV RUST_BACKTRACE=full
CMD ["geph4-client", "connect", "--socks5-listen", "0.0.0.0:9909", "--http-listen", "0.0.0.0:9910", "--exit-server", "ca-mtl-109.geph.io", "auth-password", "--username", "public", "--password", "public"]
