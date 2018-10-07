from arm32v7/node:8.12.0-jessie
RUN apt-get update && apt-get install -y libavahi-compat-libdnssd-dev
RUN apt-get install -y libkrb5-dev avahi-daemon
RUN mkdir -p /var/run/dbus
# Ensure UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
RUN npm i -g --unsafe-perm homebridge@0.4.45 homebridge-milight@1.1.4 homebridge-blynk@0.9.0
COPY run.sh /root/
RUN chmod +x /root/run.sh
CMD ["/root/run.sh"]
