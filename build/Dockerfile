FROM eclipse-mosquitto

COPY entrypoint.sh /docker-entrypoint.sh

USER root

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]