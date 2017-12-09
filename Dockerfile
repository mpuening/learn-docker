#
# Example Hello world docker file
#
FROM ubuntu

#
# Example of appt-get command
#
RUN apt-get update && apt-get install -y \
    vim

#
# Example of adding files
#
ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh

#
# Set entry point
#
ENTRYPOINT ["/opt/entrypoint.sh"]
