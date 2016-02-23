FROM gliderlabs/alpine
RUN apk update && apk add syncthing
EXPOSE 22000 8384
VOLUME /data/config /data/sync
CMD ["syncthing", "-gui-address=0.0.0.0:8384", "-no-browser", "-no-restart", "-home=/data/config"]
