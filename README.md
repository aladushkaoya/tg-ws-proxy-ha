# TG WS Proxy for Home Assistant

Home Assistant App for [Flowseal/tg-ws-proxy](https://github.com/Flowseal/tg-ws-proxy).

Provides a local Telegram WebSocket proxy running directly on Home Assistant.

## Installation

[![Open your Home Assistant instance and add this repository](https://my.home-assistant.io/badges/supervisor_store.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Faladushkaoya%2Ftg-ws-proxy-ha)

Or manually add this repository to Home Assistant:

[https://github.com/aladushkaoya/tg-ws-proxy-ha](https://github.com/aladushkaoya/tg-ws-proxy-ha)

Then install **TG WS Proxy** from the App Store.

## Configuration

The App can be configured from:

**Settings → Apps → TG WS Proxy → Configuration**

The `secret` is generated automatically on the first start.

You can find the generated secret in the App logs. Alternatively, after starting the App, refresh the Configuration page and the generated secret will appear in the `Secret` field.

## Credits

This App packages [Flowseal/tg-ws-proxy](https://github.com/Flowseal/tg-ws-proxy).