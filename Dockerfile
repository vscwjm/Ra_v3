FROM alpine
RUN apk update \
	&& apk add bash curl ttyd
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
