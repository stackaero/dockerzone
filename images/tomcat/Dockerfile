FROM centos:latest

MAINTAINER vinay <vvinayreddy@hotmail.com>

ENV java_version 8.0
ENV java_version_sub 60
ENV java_install_dir /usr/lib/jvm
ENV java_mirror http://www.java.net/download/jdk8u60/archive/b17/binaries

# installing java
RUN mkdir -p $java_install_dir \
    && yum install -y wget \
    && wget $java_mirror/jdk-8u60-ea-bin-b17-linux-x64-26_may_2015.tar.gz -O /opt/jdk-8u60-ea-bin-b17-linux-x64-26_may_2015.tar.gz \
    && tar xvzf /opt/jdk-8u60-ea-bin-b17-linux-x64-26_may_2015.tar.gz -C $java_install_dir

ENV JAVA_HOME $java_install_dir/jdk1.$java_version_$java_version_sub
ENV PATH $PATH:$JAVA_HOME/bin

ENV tomcat_user tomcat
ENV tomcat_group tomcat
ENV tomcat_version 7.0.61
ENV tomcat_mirror http://archive.apache.org/dist

# Adding user and group for managing tomcat server
RUN groupadd $tomcat_group && useradd -g $tomcat_user $tomcat_group

# Installing tomcat
RUN wget $tomcat_mirror/tomcat/tomcat-7/v$tomcat_version/bin/apache-tomcat-$tomcat_version.tar.gz -O /opt/apache-tomcat-$tomcat_version.tar.gz \
    && tar xvzf /opt/apache-tomcat-$tomcat_version.tar.gz -C /opt \
    && mv /opt/apache-tomcat-$tomcat_version /opt/tomcat \
    && rm -rf /opt/apache-tomcat-$tomcat_version.tar.gz \
    && chown $tomcat_user:$tomcat_group /opt/tomcat

# copying the configured tomcat-users file to manage tomcat web server
COPY tomcat-users.xml /opt/tomcat/conf

ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

# exposing the port number to access tomcat server
EXPOSE 8080

VOLUME /opt/tomcat/data
WORKDIR /opt/tomcat

# Launch Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]