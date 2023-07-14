FROM alpine 

MAINTAINER Joceir Luiz <joceirluiz@gmail.com

COPY helloworld ./helloworld

ENTRYPOINT ./helloworld
