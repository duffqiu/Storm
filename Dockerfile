FROM duffqiu/dockerjdk7:latest
MAINTAINER duffqiu@gmail.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum -y  update
RUN yum install -y wget tar

RUN wget --no-cookies --no-check-certificate http://www.us.apache.org/dist/storm/apache-storm-0.9.4/apache-storm-0.9.4.tar.gz
RUN tar zxf apache-storm-0.9.4.tar.gz
RUN mv apache-storm-0.9.4 storm

EXPOSE 6627

EXPOSE 6700 6701 6702 6703

EXPOSE 8080

WORKDIR storm

ENTRYPOINT [ "bin/storm" ]

CMD ["nimbus"]
