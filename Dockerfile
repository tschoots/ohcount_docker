FROM ubuntu:15.10

MAINTAINER Ton Schoots <tschoots@blackducksoftware.com>

RUN apt-get update -y \ 
    && apt-get install -y ragel libpcre3 libpcre3-dev magic libmagic-dev gcc swig ruby ruby-dev gperf git  \
    && ln -s /usr/include/x86_64-linux-gnu/ruby-2.1.0/ruby/config.h /usr/include/ruby-2.1.0/ruby/config.h \
    && git clone git://github.com/blackducksw/ohcount.git \
    && cd ohcount \
    && ./build
    



