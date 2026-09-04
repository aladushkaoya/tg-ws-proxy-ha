FROM ghcr.io/home-assistant/base:latest

RUN apk add --no-cache \
    git \
    python3 \
    py3-pip


WORKDIR /app

ARG TG_WS_PROXY_VERSION=1.10.0

RUN git clone \
    --depth 1 \
    --branch "v${TG_WS_PROXY_VERSION}" \
    https://github.com/Flowseal/tg-ws-proxy.git \
    /app/tg-ws-proxy

RUN pip install --break-system-packages --no-cache-dir /app/tg-ws-proxy

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]