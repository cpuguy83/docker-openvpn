FROM ubuntu:12.04
RUN echo deb http://archive.ubuntu.com/ubuntu/ precise main universe > /etc/apt/sources.list.d/precise.list
RUN apt-get update -q && apt-get install -qy openvpn iptables socat curl
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp

ADD ./bin /usr/local/sbin

ENTRYPOINT ["/usr/local/sbin/run"]
CMD [""]

