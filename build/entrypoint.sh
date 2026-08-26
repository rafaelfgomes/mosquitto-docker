#!/bin/sh
set -e

if [ -z "$MQTT_USER" ] || [ -z "$MQTT_PASSWORD" ]; then
    echo "ERRO: As variáveis MQTT_USER e MQTT_PASSWORD precisam ser definidas."
    exit 1
fi

echo "Configurando ambiente do MQTT..."

sed -i 's|^password_file.*|password_file /tmp/passwd|g' /tmp/mosquitto.conf

rm -f /tmp/passwd

mosquitto_passwd -b -c /tmp/passwd "$MQTT_USER" "$MQTT_PASSWORD"

chown 1883:1883 /tmp/mosquitto.conf /tmp/passwd

chown -R 1883:1883 /mosquitto/data /mosquitto/log

echo "Inicialização concluída com sucesso. Iniciando o Mosquitto..."

exec "$@"
