FROM ubuntu:latest

MAINTAINER Mantri

RUN apt-get update && apt-get -y install ntp && apt-get install -y mariadb-server\
    && apt-get install -y python-pip && pip install -U pip && \
    apt-get install python-dev libmysqlclient-dev\
    && pip install MySQL-python

COPY ntp.conf.j2  /etc/ntp.conf

COPY my.cnf.j2  /etc/my.cnf

RUN touch /var/log/mysqld.log &&  mkdir -p /var/run/mysqld && chmod 777 /var/lib/mysql && \
       touch /var/run/mysqld/mysqld.sock

VOLUME ["/var/lib/mysql/"]

RUN chmod 755  /usr/bin/

COPY container-entrypoint.sh /usr/bin/

RUN chmod 777 /usr/bin/container-entrypoint.sh

ENTRYPOINT ["/usr/bin/container-entrypoint.sh"]

EXPOSE 3306

CMD ["mysqld"]
