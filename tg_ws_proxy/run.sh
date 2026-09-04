#!/usr/bin/with-contenv bashio

HOST=$(bashio::config 'host')
PORT=$(bashio::config 'port')
SECRET=$(bashio::config 'secret')
POOL_SIZE=$(bashio::config 'pool_size')
BUF_KB=$(bashio::config 'buf_kb')

if [ -z "$SECRET" ]; then
    SECRET=$(python3 -c 'import secrets; print(secrets.token_hex(16))')

    bashio::addon.option "secret" "$SECRET"

    bashio::log.info "Generated new secret: $SECRET"
fi


ARGS=(
    --host "$HOST"
    --port "$PORT"
    --secret "$SECRET"
    --pool-size "$POOL_SIZE"
    --buf-kb "$BUF_KB"
)

if bashio::config 'verbose'; then
    ARGS+=(--verbose)
fi
exec tg-ws-proxy "${ARGS[@]}"