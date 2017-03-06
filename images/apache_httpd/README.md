# dockerfiles-centos-httpd

CentOS Dockerfile for Apache httpd

# Build

Copy the sources down and do the build

  # docker build -t httpd .

# Usage

To run (if port 8080 is available and open on your host):

  # docker run -d -p 8080:8080 httpd

# To the port that the container is listening on:

  # docker ps

# Test

  # curl localhost:8080