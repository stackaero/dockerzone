FROM ubuntu:latest

MAINTAINER Lakshmi <naiduklr936@gmail.com>

# Installing development tools like GCC, C++, etc., required to Ubuntu

RUN apt-get -y update \
    && apt-get install -y build-essential \
    && apt-get install -y wget

# Install dependicies required for nginx

# Downloading and Installing PCRE

RUN wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.40.tar.gz -O /opt/pcre-8.40.tar.gz \
    && tar -zxf /opt/pcre-8.40.tar.gz -C /opt \
    && rm -rf /opt/pcre-8.40.tar.gz \
    && cd /opt/pcre-8.40 \
    && ./configure \
    && make \
    && make install

# Downloading and Installing Zlib  

RUN wget http://zlib.net/zlib-1.2.11.tar.gz -O /opt/zlib-1.2.11.tar.gz \
    && tar -zxf /opt/zlib-1.2.11.tar.gz -C /opt \
    && rm -rf /opt/zlib-1.2.11.tar.gz \
    && cd /opt/zlib-1.2.11 \
    && ./configure \
    && make \
    && make install

# Downloading and Installing OpenSSL    

RUN wget http://www.openssl.org/source/openssl-1.0.2f.tar.gz -O /opt/openssl-1.0.2f.tar.gz \
    && tar -zxf /opt/openssl-1.0.2f.tar.gz -C /opt \
    && rm -rf /opt/openssl-1.0.2f.tar.gz \
    && cd /opt/openssl-1.0.2f \
    && ./config --prefix=/usr \
    && make \
    && make install
    
# Downloading and Installing nginx

RUN wget http://nginx.org/download/nginx-1.10.3.tar.gz -O /opt/nginx-1.10.3.tar.gz \
    && tar -zxf /opt/nginx-1.10.3.tar.gz -C /opt \
    && rm -rf /opt/nginx-1.10.3.tar.gz \
    && cd /opt/nginx-1.10.3 \
    && ./configure --prefix=/usr \
    && make \
    && make install
    
#Copying service file

COPY nginx.service /etc/systemd/system/nginx.service

VOLUME /opt/nginx-1.10.3/html

EXPOSE 80

#running nginx
CMD ["nginx", "-g", "daemon off;"]


