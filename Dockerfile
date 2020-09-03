FROM wyveo/nginx-php-fpm:latest

RUN apt-get update -y && apt-get upgrade -y && apt-get install php-dev -y && apt-get install php-xdebug

RUN echo "xdebug.remote_enable=1" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_port=9000" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_autostart=1" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_connect_back=0" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.idekey=PHPSTORM" >> /etc/php/7.4/mods-available/xdebug.ini  \
    && echo "xdebug.remote_host=host.docker.internal" >> /etc/php/7.4/mods-available/xdebug.ini  \
    && echo "xdebug.remote_handler=dbgp" >> /etc/php/7.4/mods-available/xdebug.ini