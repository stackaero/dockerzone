# dockerfiles-centos-httpd

CentOS Dockerfile for Apache httpd

# Build

Copy the sources down and do the build

docker build -t httpd .

# Usage

To run (if port 8080 is available and open on your host):

docker run -d -p 8080:8080 httpd
or to assign a random port that maps to port 80 on the container:

To the port that the container is listening on:
docker ps

# Test

curl localhost:8080