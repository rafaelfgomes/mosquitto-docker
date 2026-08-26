#!/bin/sh
set -e

if [ -z "$MQTT_USER" ] || [ -z "$MQTT_PASSWORD" ]; then
    echo "ERRO: As variáveis MQTT_USER e MQTT_PASSWORD precisam ser definidas."
    exit 1
fi

echo "Configurando usuário e senha do MQTT..."

rm -f /mosquitto/passwd

mosquitto_passwd -b -c /mosquitto/passwd "$MQTT_USER" "$MQTT_PASSWORD"

exec "$@"
