FROM alpine

ENV ASTRA_PORT "8001"
ENV ASTRA_CONF_FILE "/etc/astra/astra.conf"
ENV ASTRA_SCRIPT ""
ENV ASTRA_DISABLE_OUT "1"

ADD ./context/entrypoint.sh /entrypoint.sh
ADD ./context/astra.conf /etc/astra/astra.conf
ADD ./context/license.txt /etc/astra/license.txt

RUN wget -O /bin/astra https://cesbo.com/download/astra/archive/5.63/x86_64/astra \
    && chmod +x /bin/astra && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8001,8002
