FROM ubuntu
RUN echo " hello docker from jenkins" >index.html
RUN sudo mv index.html /var/www/htm/
CMD ["cat", "index.html"]
