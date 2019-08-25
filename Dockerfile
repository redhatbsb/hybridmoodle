FROM moodlehq/moodle-php-apache:7.3-buster
ADD config /tmp/
RUN /tmp/configuramoodle.sh
<<<<<<< HEAD
COPY config/ports.conf /etc/apache2/ports.conf
=======
COPY ports.conf /etc/apache2/ports.conf
>>>>>>> 9419daed17aeee68de5115e3cb7c7a838e5f920f
RUN rm -f /var/www/html/config.php && ln -s /config/config.php /var/www/html/config.php
EXPOSE 8080
USER 12345
