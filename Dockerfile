FROM debian:jessie
RUN apt-get update -q && apt-get install -qy openvpn iptables curl openssl haveged --no-install-recommends
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp

ADD ./bin /usr/local/sbin

ENTRYPOINT ["/usr/local/sbin/run"]
