FROM alpine:3.20.3

RUN apk update && apk add yt-dlp

WORKDIR /

COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh

WORKDIR /download

ENTRYPOINT ["/entrypoint.sh"]

### build ###
# export docker_http_proxy=http://host.docker.internal:1080
# docker build --build-arg http_proxy=$docker_http_proxy --build-arg https_proxy=$docker_http_proxy -f Dockerfile -t allape/yt-dlp:latest .

### run ###
# docker run --rm -it -v "$(pwd)/download:/download" allape/yt-dlp:latest
