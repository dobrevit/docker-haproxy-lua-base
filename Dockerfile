FROM ubuntu:22.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y haproxy lua5.3 lua5.3-socket lua5.3-json lua-inspect && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/docker-library/haproxy/3e8ddb695fb46f902afea21ce0de1d481c1c71ab/2.7/alpine/docker-entrypoint.sh /docker-entrypoint.sh

STOPSIGNAL SIGUSR1
ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]
