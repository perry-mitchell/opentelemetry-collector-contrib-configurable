#!/bin/sh

if [[ -z "$OTEL_CONFIG_BASE64" ]]; then
    echo "No config passed - it must be mounted"
else
    echo "Config passed as environment variable"
    mkdir -p /etc/otel
    echo "$OTEL_CONFIG_BASE64" | base64 -d > /etc/otel/config.yaml
    cat /etc/otel/config.yaml
fi

exec "$@"
