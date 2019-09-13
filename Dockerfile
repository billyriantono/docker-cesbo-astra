FROM alpine

ENV ASTRA_PORT "8000"
ENV ASTRA_CONF_FILE "/etc/astra/astra.conf"
ENV ASTRA_SCRIPT ""
ENV ASTRA_DISABLE_OUT "1"

ADD ./context/entrypoint.sh /entrypoint.sh
ADD ./context/astra.conf /etc/astra/astra.conf

RUN wget -O /bin/astra http://cesbo.com/download/astra/$(uname -m) \
    && chmod +x /bin/astra && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
