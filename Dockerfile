FROM duffqiu/dockerjdk7:latest
MAINTAINER duffqiu@gmail.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum -y  update
RUN yum install -y wget tar

RUN wget --no-cookies --no-check-certificate https://github.com/apache/storm/archive/v0.9.4.tar.gz
RUN tar zxf v0.9.4.tar.gz
RUN mv storm-0.9.4 storm

EXPOSE 6627

EXPOSE 6700 6701 6702 6703

EXPOSE 8080

WORKDIR storm

ENTRYPOINT [ "bin/storm" ]

CMD ["nimbus"]
