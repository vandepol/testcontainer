from registry.access.redhat.com/ubi7/ubi


user root
RUN yum install curl
RUN yum install -y iputils
RUN yum install -y bind-utils
#RUN yum install -y traceroute
COPY *.rpm /
RUN yum install -y *.rpm

ENTRYPOINT ["tail", "-f", "/dev/null"]
