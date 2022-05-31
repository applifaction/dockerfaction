FROM dockware/essentials:latest
COPY /files/php/01-general.ini /etc/php/5.6/fpm/conf.d/01-general.ini
COPY /files/php/01-general.ini /etc/php/7.0/fpm/conf.d/01-general.ini
COPY /files/php/01-general.ini /etc/php/7.1/fpm/conf.d/01-general.ini
COPY /files/php/01-general.ini /etc/php/7.2/fpm/conf.d/01-general.ini
COPY /files/php/01-general.ini /etc/php/7.3/fpm/conf.d/01-general.ini
COPY /files/php/01-general.ini /etc/php/7.4/fpm/conf.d/01-general.ini
COPY /files/php/01-general.ini /etc/php/8.0/fpm/conf.d/01-general.ini
COPY /files/make/makefile /var/www/makefile
COPY /scripts/nvm.sh /var/www/nvm.sh
RUN sudo chmod +x /var/www/nvm.sh && /var/www/nvm.sh && rm /var/www/nvm.sh