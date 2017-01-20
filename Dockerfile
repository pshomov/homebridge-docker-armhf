from hypriot/rpi-node:6.9.4
RUN apt-get update && apt-get install -y libavahi-compat-libdnssd-dev
RUN npm i -g  --unsafe-perm homebridge
RUN npm i -g homebridge-milight
COPY config.json /root/.homebridge/config.json
COPY run.sh /root/
RUN chmod +x /root/run.sh
CMD ["/root/run.sh"]

RUN apt-get install -y libkrb5-dev avahi-daemon
RUN mkdir -p /var/run/dbus
# Ensure UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
