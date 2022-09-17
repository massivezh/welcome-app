FROM php:7.2-apache
COPY . /var/www/html/
EXPOSE 80
RUN rm -f /var/www/html/{Containerfile,README.md} 
