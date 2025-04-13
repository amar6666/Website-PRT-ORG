FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

COPY . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
