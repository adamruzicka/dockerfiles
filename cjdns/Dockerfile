FROM alpine:3.5
RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
	apk add -U cjdns@edge ip6tables
ADD init.sh /
CMD /init.sh
