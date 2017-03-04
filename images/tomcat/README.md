Docker Tomcat Image
===================

What is Tomcat?
----------------
Apache Tomcat (or simply Tomcat) is an open source web server and servlet container developed by the Apache Software 
Foundation (ASF). Tomcat implements the Java Servlet and the JavaServer Pages (JSP) specifications from Oracle, and 
provides a "pure Java" HTTP web server environment for Java code to run in. In the simplest config Tomcat runs in a 
single operating system process. The process runs a Java virtual machine (JVM). Every single HTTP request from a browser 
to Tomcat is processed in the Tomcat process in a separate thread.

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