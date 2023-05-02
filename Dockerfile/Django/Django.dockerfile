
FROM centos:centos7

RUN yum -y update; yum clean all
RUN yum -y install epel-release
RUN yum -y install python-pip python-django git sqlite; yum clean all

EXPOSE 8000

CMD [ "/bin/bash" ]