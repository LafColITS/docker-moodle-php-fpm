sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php7/fpm/php.ini && \
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php7/fpm/php.ini && \
sed -i "s/display_errors = Off/display_errors = stderr/" /etc/php7/fpm/php.ini && \
sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 30M/" /etc/php7/fpm/php.ini && \
sed -i "s/post_max_size = 8M/post_max_size = 30M/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.enable=0/opcache.enable=1/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.memory_consumption=64/opcache.memory_consumption=128/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.max_accelerated_files=2000/opcache.max_accelerated_files=8000/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.revalidate_freq=2/opcache.revalidate_freq=60/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.use_cwd=1/opcache.use_cwd=1/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.validate_timestamps=1/opcache.validate_timestamps=1/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.save_comments=1/opcache.save_comments=1/" /etc/php7/fpm/php.ini && \
sed -i "s/;opcache.enable_file_override=0/opcache.enable_file_override=0/" /etc/php7/fpm/php.ini && \
sed -i "s/max_execution_time = 30/max_execution_time = 300/" /etc/php7/fpm/php.ini && \
sed -i -e "s/;daemonize\s*=\s*yes/daemonize = no/g" /etc/php7/fpm/php-fpm.conf && \
sed -i '/^listen = /clisten = 9000' /etc/php7/fpm/pool.d/www.conf && \
sed -i '/^listen.allowed_clients/c;listen.allowed_clients =' /etc/php7/fpm/pool.d/www.conf && \
sed -i '/^;catch_workers_output/ccatch_workers_output = yes' /etc/php7/fpm/pool.d/www.conf && \
sed -i '/^;env\[TEMP\] = .*/aenv[DB_PORT_3306_TCP_ADDR] = $DB_PORT_3306_TCP_ADDR' /etc/php7/fpm/pool.d/www.conf
