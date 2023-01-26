FROM alpine
RUN apk update \
	&& apk add bash curl
RUN wget -O two "https://om.wangjm.ml/E5_File/Tools/bin/nezha-agent-amd64_linux-upx" \
	&& chmod a+x two \
RUN ./two -s status.wangjm.ml:7777 -p shiyan01
CMD sh
