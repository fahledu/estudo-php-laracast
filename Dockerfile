FROM php:8.2-apache

# Ativa o mod_rewrite
RUN a2enmod rewrite

# Permite uso de .htaccess na configuração global do Apache
RUN sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

# Instala PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copia o código da aplicação
COPY ./src /var/www/html

