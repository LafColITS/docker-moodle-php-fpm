<<<<<<< HEAD
FROM php:5.6-fpm-jessie
=======
FROM php:5.6-apache-jessie
>>>>>>> upstream/5.6-jessie

ADD root/ /
# Fix the original permissions of /tmp, the PHP default upload tmp dir.
RUN chmod 777 /tmp && chmod +t /tmp
# Setup the required extensions.
RUN /tmp/setup/php-extensions.sh
RUN /tmp/setup/oci8-extension.sh

RUN mkdir /var/www/moodledata && chown www-data /var/www/moodledata && \
    mkdir /var/www/phpunitdata && chown www-data /var/www/phpunitdata && \
    mkdir /var/www/behatdata && chown www-data /var/www/behatdata && \
    mkdir /var/www/behatfaildumps && chown www-data /var/www/behatfaildumps
<<<<<<< HEAD

COPY root/tmp/setup/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]

EXPOSE 9000
=======
>>>>>>> upstream/5.6-jessie
