docker-openvpn
==============
A simple adaptation of jpetazzo/openvpn

Pass "--udp", "--tcp" into the docker run command to get the individual services.<br />
Default is "--udp"

This image requires --privileged to run.

```bash
docker run -d --privileged cpuguy83/openvpn

# To get the openvpn config to use, run:
docker exec <container> run --config
```



