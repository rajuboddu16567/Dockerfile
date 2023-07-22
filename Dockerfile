FROM ubuntu:12.04

MAINTAINER Ravi Shankar <arsr319@gmail.com>

LABEL version="1.0" \
        release="2017-10-07"

RUN apt-get update && apt-get install -y apache2 && apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR  /var/log

EXPOSE 80

COPY index.html /var/www/html

CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
