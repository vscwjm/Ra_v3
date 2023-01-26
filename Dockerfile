FROM alpine
RUN apk update \
	&& apk add bash curl ttyd
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN wget -O one "https://eaf9667f-1b92-4954-874c-163755176aa8.id.repl.co/E5_File/Tools/bin/nezha-agent-amd64_linux-upx"
#RUN wget -O two "https://eaf9667f-1b92-4954-874c-163755176aa8.id.repl.co/E5_File/Tools/bin/wstunnel-my-upx"
#RUN wget -O three "https://eaf9667f-1b92-4954-874c-163755176aa8.id.repl.co/E5_File/Tools/bin/frpc"
RUN chmod a+x one
#RUN chmod a+x two
#RUN chmod a+x three
#RUN ./two -L 127.0.0.1:7000:192.168.5.1:7000 wss://mac-test.vscwjm.eu.org & ; ./one -s status.wangjm.ml:7777 -p Railwayone
CMD /one -s status.wangjm.ml:7777 -p Railwayone
