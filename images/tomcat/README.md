Docker Tomcat Image
===================

What is Tomcat?
----------------
Apache Tomcat (or simply Tomcat) is an open source web server and servlet container developed by the Apache Software 
Foundation (ASF). Tomcat implements the Java Servlet and the JavaServer Pages (JSP) specifications from Oracle, and 
provides a "pure Java" HTTP web server environment for Java code to run in. In the simplest config Tomcat runs in a 
single operating system process. The process runs a Java virtual machine (JVM). Every single HTTP request from a browser 
to Tomcat is processed in the Tomcat process in a separate thread.

Tomcat Environment in the Image
---------------
```
ENV tomcat_user tomcat
ENV tomcat_group tomcat
ENV tomcat_version 7.0.61
ENV CATALINA_HOME /opt/tomcat
ENV tomcat_mirror http://archive.apache.org/dist
```

Java Environment in the Image
--------------
```
ENV java_version 8.0
ENV java_version_sub 60
ENV java_install_dir /usr/lib/jvm
ENV java_mirror http://www.java.net/download/jdk8u60/archive/b17/binaries
```
How to use this image
------------
Run the default Tomcat server (CMD ["/opt/tomcat/bin/catalina.sh", "run"])
```
$ docker-compose up
```
You can test it by visiting http://localhost:8080 in a browser 

Author
-----
vinay reddy @vvinayreddy@hotmail.com