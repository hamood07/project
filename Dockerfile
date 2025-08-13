FROM ubuntu
RUN echo " hello docker from jenkins" >index.html
RUN apt update -y ; apt install apache2 -y
RUN  mv index.html /var/www/html/
CMD ["cat", "index.html"]
