FROM ubuntu:16.04
MAINTAINER rahul vuttunoor

# Updating all files and install python setup tools ,supervisor 
RUN apt-get update && apt-get install -y python-setuptools && apt-get install -y supervisor

# copy the configaration file
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


CMD ["/usr/bin/supervisord"]

