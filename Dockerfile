# extends from image ubuntu (if not eixst, it will pull/download)
FROM ubuntu

# email
MAINTAINER JHPHICH <phich82@gmail.com>

# run update and install nginx, php-fpm and other useful libraries
RUN apt-get update -y && \
    apt-get install -y \
    git nodejs curl php-fpm php-mysql 

# Install composer
#RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer && \
#    curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig && \
#    # Make sure we're installing what we think we're installing!
#    php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" && \
#    php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --snapshot && \
#    rm -f /tmp/composer-setup.*

RUN RUN curl https://getcomposer.org/installer > composer-setup.php && php composer-setup.php && mv composer.phar /usr/local/bin/composer && rm composer-setup.php

# When connected, it will jupm to at the specfied directory on disk
VOLUME [ "/var/www/html" ]
# The current directory will be worked when connected
WORKDIR /var/www/html
# Current port
EXPOSE 9000
# Will be automatically called when connected
CMD ["php-fpm7.2"]

#docker run -p 8080:9000 -d -v $(pwd):/var/www/html phich82/php php -S 0.0.0.0:9000

