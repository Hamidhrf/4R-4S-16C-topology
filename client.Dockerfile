
# Dockerfile for Debian-based test client
FROM debian:latest

RUN apt update && \
    apt install -y iproute2 iputils-ping net-tools && \
    apt clean

CMD ["/bin/bash"]
