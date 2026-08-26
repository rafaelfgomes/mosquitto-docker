FROM eclipse-mosquitto

COPY entrypoint.sh /docker-entrypoint.sh

COPY mosquitto.conf /mosquitto/config/mosquitto.conf

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]