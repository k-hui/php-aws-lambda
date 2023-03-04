FROM bref/php-82-fpm

COPY . /var/task

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN curl -s https://getcomposer.org/installer | php
RUN php composer.phar install

CMD ["public/index.php"]