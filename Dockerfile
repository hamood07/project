FROM ubuntu
RUN echo " hello docker from jenkins" >index.html
RUN  mv index.html /var/www/htm/
CMD ["cat", "index.html"]
