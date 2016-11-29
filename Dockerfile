# A basic apache server and test landing page 
FROM ubuntu:16.04

MAINTAINER Brad Derstine version: 0.1

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
CMD ["service", "apache2", "start"]
