FROM centos:latest
MAINTAINER KARTHIK <karthik07423@gmail.com>

# update
RUN yum -y update

# install utilities
RUN yum -y install wget

# installation : java7
RUN yum install -y java-1.7.0-openjdk

# install jboss
RUN wget -O /tmp/jboss-as-7.1.1.Final.tar.gz \
    http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz && \
    tar zxvf /tmp/jboss-as-7.1.1.Final.tar.gz -C /opt

# configuration
RUN sed -i -r 's/jboss.bind.address.management:127.0.0.1/jboss.bind.address.management:0.0.0.0/' \
    /opt/jboss-as-7.1.1.Final/standalone/configuration/standalone.xml

# clean
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# expose ports
EXPOSE 8080 9990

# add help
#ADD help help.txt /
#RUN chmod 755 /help

# script to start the container
ADD jboss_run.sh /jboss_run.sh
RUN chmod 755 /*.sh
CMD ["/jboss_run.sh"]

