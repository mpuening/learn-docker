#
# Example Hello world docker file
#
FROM ubuntu

#
# Example of apt-get and other unix commands
#
RUN apt-get update && apt-get install -y \
    vim \
    nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

#
# Example of adding files
#
ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh

#
# Set entry point (switching to running xginx instead)
#
#ENTRYPOINT ["/opt/entrypoint.sh"]

#
# Commands to start nginx
#
WORKDIR /etc/nginx
CMD ["nginx"]
EXPOSE 80
EXPOSE 443

