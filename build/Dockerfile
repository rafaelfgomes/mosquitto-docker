FROM eclipse-mosquitto

COPY entrypoint.sh /docker-entrypoint.sh

COPY mosquitto.conf /tmp/mosquitto.conf

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/tmp/mosquitto.conf"]