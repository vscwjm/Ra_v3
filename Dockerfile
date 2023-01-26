FROM alpine
RUN apk update \
	&& apk add bash curl ttyd
RUN wget -O two "https://eaf9667f-1b92-4954-874c-163755176aa8.id.repl.co/E5_File/Tools/bin/nezha-agent-amd64_linux-upx"
RUN wget -O three "https://eaf9667f-1b92-4954-874c-163755176aa8.id.repl.co/E5_File/Tools/bin/wstunnel-my-upx"
#RUN chmod 777 two
#RUN chmod 777 three
#RUN ./three -L 127.0.0.1:7777:status.wangjm.ml:7777 wss://mac-test.vscwjm.eu.org &
#RUN ./two -s 127.0.0.1:7777 -p shiyan01
#RUN ttyd -p 80 sh
CMD "ttyd -p 80 sh"
