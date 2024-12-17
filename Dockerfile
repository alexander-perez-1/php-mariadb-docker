FROM php:8.3.14-apache-bookworm
WORKDIR	/var/www/html

RUN apt-get update && apt-get install -y \
    libmariadb-dev \
    curl \
    wget

RUN docker-php-ext-install mysqli

RUN groupadd -g 1020 appuser && useradd -u 1020 -g appuser appuser

USER appuser

EXPOSE 4600

CMD ["apache2ctl", "-D", "FOREGROUND"]
