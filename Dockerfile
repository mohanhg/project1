
FROM ubuntu:latest
MAINTAINER hgmohan248@gmail.com
RUN sudo apt install -y apache2
RUN sudo apt-get update -y
zip\
unzip\
ADD https://https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip  /var/www/html
WORKDIR /var/www/html/
RUN unzip mediplus-lite.zip
RUN cp -rvf mediplus-lite/* .
RUN rm -rf mediplus-lite mediplus-lite.zip
CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
EXPOSE 80 22
