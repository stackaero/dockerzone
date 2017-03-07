FROM centos
MAINTAINER Akhil

#Update OS
RUN yum -y update

#Install Apache Web Server
RUN yum -y install httpd

#Cleanup after install
RUN yum -y clean all

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]