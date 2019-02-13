FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf

#ADD nginx.conf nginx.conf
#RUN cp nginx.conf /etc/nginx/nginx.conf

# Define default command.
ENTRYPOINT ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
