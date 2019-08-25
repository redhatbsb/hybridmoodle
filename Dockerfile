FROM moodlehq/moodle-php-apache:7.3-buster
ADD config /tmp/
RUN /tmp/configuramoodle.sh
COPY config/ports.conf /etc/apache2/ports.conf
RUN rm -f /var/www/html/config.php && ln -s /config/config.php /var/www/html/config.php
EXPOSE 8080
USER 12345
