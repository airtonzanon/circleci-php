FROM alpine:3.8

RUN apk --update --progress --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.8/community add \
    curl \
    gnupg \
    php7 \
    php7-xdebug \
    php7-openssl \
    php7-ctype \
    php7-json \
    php7-phar \
    php7-zlib \
    php7-mbstring \
    php7-tokenizer \
    php7-dom \
    php7-xml \
    php7-xmlwriter \
    php7-simplexml

RUN echo "zend_extension=xdebug.so" > /etc/php7/conf.d/xdebug.ini \
  && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
  && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME /app
WORKDIR /app
