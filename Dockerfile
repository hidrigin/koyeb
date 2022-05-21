##

FROM alpine:latest

WORKDIR /root
COPY koyeb.sh /root/koyeb.sh

RUN set -ex \
    && apk add --no-cache tzdata openssl ca-certificates \
    && mkdir -p /etc/v2ray /usr/local/share/v2ray /var/log/v2ray \
    && chmod +x /root/xf.sh

CMD [ "/root/koyeb.sh" ]
