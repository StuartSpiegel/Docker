FROM centos:centos7

RUN yum -y update && yum clean all
RUN yum install -y kubernetes-node findutils && yum clean all