FROM ubuntu
RUN echo " hello docker from jenkins" >index.html
CMD ["cat", "index.html"]
