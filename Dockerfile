FROM ubuntu

RUN apt update -y && apt install apache2 -y

RUN echo "hello docker from jenkins" > /var/www/html/index.html

RUN echo " hello github"

EXPOSE 80

# Ensure runtime directory exists
RUN mkdir -p /var/run/apache2

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
