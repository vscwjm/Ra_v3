FROM alpine
RUN apk update \
	&& apk add bash curl ttyd
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN wget -O one "https://eaf9667f-1b92-4954-874c-163755176aa8.id.repl.co/E5_File/Tools/bin/nezha-agent-amd64_linux-upx"
RUN chmod a+x one
RUN ./one -s status.wangjm.ml:7777 -p Railwayone
CMD /entrypoint.sh
