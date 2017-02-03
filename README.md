# Homebridge docker image for Raspberry Pi

This is my packaging of [Homebridge](https://github.com/nfarina/homebridge) with [MiLight plugin](https://github.com/dotsam/homebridge-milight) in a Docker image that I run on my Raspberry Pi home server.

## Building the image
```
$ docker build -t homebridge .
```

## Running the container
```
$ docker rm -f homebridge ; docker run --name homebridge -d --restart=unless-stopped --net=host -p 51826:51826 -p 5353:5353 homebridge
```
